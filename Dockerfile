FROM alpine:latest

ARG mongo

ENV MONGO_URL=$mongo

RUN apk add --no-cache nodejs npm

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

ENTRYPOINT ["node"]

CMD ["app.js"]
