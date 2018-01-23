# Base Image
FROM node:7

WORKDIR /usr/src/app

COPY package.json package.json

RUN npm install

COPY app.js app.js

EXPOSE 80

ENTRYPOINT ["npm", "start"]