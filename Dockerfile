FROM node:18-alpine as BUILD_IMAGE

WORKDIR /var/www/html

COPY ./package.json .

RUN npm install

COPY . .

CMD [ "npm", "run", "dev" ]