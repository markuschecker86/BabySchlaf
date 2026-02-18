FROM nginx:alpine
COPY index*.html /usr/share/nginx/html/index.html
COPY manifest.json /usr/share/nginx/html/
COPY sw.js /usr/share/nginx/html/
COPY favicon.ico /usr/share/nginx/html/
RUN sed -i 's/listen       80;/listen 8080;/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
