# This will build the docker image for nginx

FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html