FROM nginx:latest

# Copy your app files
COPY trans_proto/ /usr/share/nginx/html/
COPY trans_proto/ /var/www/html/

# Copy both nginx conf files into conf.d (NGINX auto-loads them)
COPY trans_proto/default.conf /etc/nginx/conf.d/site1.conf
COPY trans_proto/server2.conf /etc/nginx/conf.d/site2.conf

EXPOSE 80 3000

CMD ["nginx", "-g", "daemon off;"]
