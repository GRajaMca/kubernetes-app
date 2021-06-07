FROM nginx:stable-alpine
ADD dist /usr/share/nginx/html
ADD default.conf /etc/nginx/conf.d/
ADD *.conf.template /etc/nginx/conf.d/
EXPOSE 4200
CMD ["sh", "-c", "cp /etc/nginx/conf.d/default-${PROFILE}.conf.template /etc/nginx/conf.d/default.conf; nginx -g 'daemon off;'"]
