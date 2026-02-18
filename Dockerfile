FROM nginx:alpine
RUN rm -rf /etc/nginx/conf.d/*
RUN printf 'server {\n  listen 8080;\n  root /usr/share/nginx/html;\n  index index.html;\n}\n' > /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*
COPY babyschlaf_v3_sync.html /usr/share/nginx/html/index.html
COPY manifest.json /usr/share/nginx/html/
COPY sw.js /usr/share/nginx/html/
COPY favicon.ico /usr/share/nginx/html/
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
