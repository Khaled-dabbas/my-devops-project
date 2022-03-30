# syntax=docker/dockerfile:1

FROM node:17.0.1-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]
ARG listen_port="8080"
ENV PORT="$listen_port"

RUN npm install

COPY . .
EXPOSE 8080

CMD [ "node", "app.js" ]

