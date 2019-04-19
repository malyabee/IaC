#!/bin/bash
 echo 'Starting Provision: web'$1
 echo "<h1>Machine: web"$1 "</h1>" > /var/www/html/index.html
 echo 'Provision web'$1 'complete'
