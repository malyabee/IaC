#!/bin/bash
echo 'Starting Provision: lb1'
 sudo service nginx stop
 sudo rm -rf /etc/nginx/sites-enabled/default
 sudo touch /etc/nginx/sites-enabled/default
 echo "upstream testapp {
     server 192.168.22.11;
     server 192.168.22.12;
 }
server {
     listen 80 default_server;
     listen [::]:80 default_server ipv6only=on;
    root /usr/share/nginx/html;
     index index.html index.htm;
    # Make site accessible from http://localhost/
     server_name localhost;
    location / {
         proxy_pass http://testapp;
     }
}" >> /etc/nginx/sites-enabled/default
 sudo service nginx start
 echo "Machine: lb1" > /var/www/html/index.html
 echo 'Provision lb1 complete'
