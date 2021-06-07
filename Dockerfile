FROM nginx:stable-alpine
ADD dist /usr/share/nginx/html
ADD default.conf /etc/nginx/conf.d/
EXPOSE 5000
CMD ["sh", "-c", "nginx -g 'daemon off;'"]
