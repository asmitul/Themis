FROM node:18.17.1-alpine3.18

WORKDIR /app

COPY package.json ./

ENV NODE_ENV = production

RUN npm install

COPY . .

RUN npm run build

EXPOSE 4309

CMD npm run start
