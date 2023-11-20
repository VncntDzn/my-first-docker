FROM node:18-alpine as dev
WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
RUN yarn install
COPY . .
EXPOSE 3000
CMD yarn dev