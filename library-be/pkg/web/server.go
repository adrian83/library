package web

import (
	"context"
	"net/http"
	"os"
	"os/signal"
	"strconv"
	"syscall"
	"time"

	"github.com/gorilla/handlers"
	"github.com/gorilla/mux"
)

var allowedHeaders = handlers.AllowedHeaders([]string{"X-Requested-With", "Content-Type", "Authorization"})
var allowedMethods = handlers.AllowedMethods([]string{"GET", "POST", "PUT", "DELETE", "HEAD", "OPTIONS"})
var allowedOrigins = handlers.AllowedOrigins([]string{"*"})

type HandlerFunc = func(http.ResponseWriter, *http.Request)

type Route struct {
	Path    string
	Handler HandlerFunc
	Methods []string
}

func NewRoute(path string, handler HandlerFunc, methods ...string) *Route {
	return &Route{
		Path:    path,
		Handler: handler,
		Methods: methods,
	}
}

type Routes = []*Route

func NewRoutes(routes ...*Route) Routes {
	return routes
}

type logger interface {
	Infof(string, ...interface{})
	Fatalf(string, ...interface{})
}

type Router struct {
	handler http.Handler
	logger  logger
}

func NewRouter(routes Routes, staticsPath *string, logger logger) *Router {
	muxRouter := mux.NewRouter()

	for _, route := range routes {
		logger.Infof("Registering handler for path: %v and methods: %v", route.Path, route.Methods)
		muxRouter.HandleFunc(route.Path, route.Handler).Methods(route.Methods...)
	}

	if staticsPath != nil {
		logger.Infof("Static files path: %v", *staticsPath)
		muxRouter.PathPrefix("").Handler(http.StripPrefix("", http.FileServer(http.Dir(*staticsPath))))
	}

	http.Handle("/", muxRouter)

	handler := handlers.CORS(allowedHeaders, allowedMethods, allowedOrigins)(muxRouter)

	return &Router{
		handler: handler,
		logger:  logger,
	}
}

type Server struct {
	server *http.Server
	stop   chan os.Signal
	logger logger
}

func NewServer(host string, port int, router *Router, logger logger) *Server {
	sigint := make(chan os.Signal, 1)
	signal.Notify(sigint, os.Interrupt)
	signal.Notify(sigint, syscall.SIGTERM)

	serverAddress := host + ":" + strconv.Itoa(port)

	server := &http.Server{
		Addr:    serverAddress,
		Handler: router.handler,
	}

	return &Server{
		server: server,
		stop:   sigint,
		logger: logger,
	}
}

func (s *Server) Start() {
	go func() {
		if err := s.server.ListenAndServe(); err != nil && err != http.ErrServerClosed {
			s.logger.Fatalf("Error while serving requests: %v", err)
		}
	}()

	s.logger.Infof("Server started on: %v", s.server.Addr)
}

func (s *Server) Wait() {
	s.logger.Infof("Server waiting for interuption")
	<-s.stop
}

func (s *Server) Stop() {
	s.logger.Infof("Shutting down server...")

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	if err := s.server.Shutdown(ctx); err != nil {
		s.logger.Fatalf("Server shutdown failed: %v", err)
	}

	s.logger.Infof("Server gracefully stopped")
}
