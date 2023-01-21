FROM node:18.13.0-alpine3.17

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --omit=dev

COPY . .

EXPOSE 3000

CMD [ "node", "server.js" ]