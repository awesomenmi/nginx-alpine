FROM alpine:latest
RUN apk update \
   && apk add nginx
RUN mkdir -p /run/nginx
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
