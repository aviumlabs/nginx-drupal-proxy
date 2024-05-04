# syntax=docker/dockerfile:1
FROM nginx:1.26.0-alpine

RUN apk update && apk upgrade && apk add --no-cache \
    openssl \
    unzip \
    zip 

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY . .
