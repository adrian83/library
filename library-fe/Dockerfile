FROM node:16.20.0-bookworm-slim

ARG BE_HOST=http://localhost:7070


ADD . /library-fe
WORKDIR /library-fe
RUN rm -rf node_modules
RUN echo "REACT_APP_BACKEND_HOST=$BE_HOST" > .env
RUN touch .env


RUN npm --version
RUN npm install
RUN npm run build

#RUN npm install react-scripts@latest

RUN yarn global add serve

EXPOSE 3000

#CMD ["npm", "start"]
CMD ["serve", "-s", "build"]