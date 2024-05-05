# syntax=docker/dockerfile:1
FROM nginx:1.26.0-alpine

RUN apk update && apk upgrade && apk add --no-cache openssl 

RUN rm -rf /etc/nginx/conf.d/default.conf

RUN set -x ; \
  adduser -u 82 -D -S -G www-data www-data && exit 0; exit 1

COPY . .
