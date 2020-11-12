FROM node:13.12.0-stretch-slim

ADD . /library-fe
WORKDIR /library-fe
RUN rm -rf node_modules

RUN npm --version
RUN npm install
#RUN npm install react-scripts@latest

CMD ["npm", "run", "start"]