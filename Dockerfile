# Build stage
FROM node:18.17.1-alpine3.18 as builder

WORKDIR /app

COPY package*.json ./

RUN npm install --only=production && npm cache clean --force

COPY . .

RUN npm run build

# Production stage
FROM node:18.17.1-alpine3.18

WORKDIR /app

COPY --from=builder /app .

ENV NODE_ENV=production

EXPOSE 3000

USER node

CMD ["npm", "run", "start"]
