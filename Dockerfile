FROM nginx:stable-alpine
COPY dist/* /usr/share/nginx/html
ADD default.conf /etc/nginx/conf.d/
#RUN rm /etc/nginx/conf.d/default.conf
#COPY default.conf /etc/nginx/conf.d
EXPOSE 5000
CMD ["sh", "-c", "/etc/nginx/conf.d/default.conf; nginx -g 'daemon off;'"]
