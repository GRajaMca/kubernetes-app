FROM nginx:stable-alpine
ADD dist /usr/share/nginx/html
ADD default.conf /etc/nginx/conf.d/
#RUN rm /etc/nginx/conf.d/default.conf
#COPY default.conf /etc/nginx/conf.d
EXPOSE 5000
