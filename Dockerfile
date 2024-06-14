FROM nginx:alpine AS frontend
RUN apk add --no-cache bash

COPY nginx.conf /etc/nginx/nginx.conf
COPY . /usr/share/nginx/html/
