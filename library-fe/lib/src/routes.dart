import 'package:angular_router/angular_router.dart';

import 'dashboard_component.template.dart' as dashboard_template;
import 'todo_list_component.template.dart' as todo_list_template;
import 'register_component.template.dart' as register_template;
import 'login_component.template.dart' as login_template;
import 'logout_component.template.dart' as logout_template;

import 'books_list_component.template.dart' as books_list_template;

import 'route_paths.dart';

class Routes {

  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );

  static final register = RouteDefinition(
    routePath: RoutePaths.register,
    component: register_template.RegisterComponentNgFactory,
  );

  static final login = RouteDefinition(
    routePath: RoutePaths.login,
    component: login_template.LoginComponentNgFactory,
  );

  static final logout = RouteDefinition(
    routePath: RoutePaths.logout,
    component: logout_template.LogoutComponentNgFactory,
  );

  static final todos = RouteDefinition(
    routePath: RoutePaths.todos,
    component: todo_list_template.TodoListComponentNgFactory,
  );

  static final books = RouteDefinition(
    routePath: RoutePaths.books,
    component: books_list_template.BookListComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    register,
    login,
    logout,
    todos,
    dashboard,
    books,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.dashboard.toUrl(),
    ),
  ];
}
