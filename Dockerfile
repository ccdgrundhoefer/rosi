FROM node:8.15-alpine

ENV NPM_CONFIG_LOGLEVEL info

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY *.js .

EXPOSE 8080

CMD [ "npm", "start" ]