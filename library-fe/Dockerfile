FROM node:10.15.3-jessie-slim

ADD . /library-fe
WORKDIR /library-fe
RUN rm -rf node_modules

RUN npm --version
RUN ls -al
RUN pwd

RUN npm install react-scripts@latest

CMD ["npm", "start"]