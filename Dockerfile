# install node
FROM node:18.17.1

WORKDIR /app

COPY package.json ./

RUN npm install --production

COPY . .

RUN npm run build

EXPOSE 3000

CMD npm run start