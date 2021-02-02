FROM nginx

WORKDIR /usr/src/app/

COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./dist  /usr/share/nginx/html/

EXPOSE 17000

CMD ["nginx", "-g", "daemon off;"]