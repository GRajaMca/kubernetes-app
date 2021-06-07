FROM nginx:stable-alpine
COPY dist /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf.conf /etc/nginx/conf.d
EXPOSE 5000
