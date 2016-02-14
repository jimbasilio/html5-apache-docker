#!/bin/sh

sudo docker stop html5-apache
sudo docker rm html5-apache
sudo docker run -d -v $(pwd)/../hiit-frontend/dist:/usr/local/apache2/htdocs --name=html5-apache -p 8080:80 -t html5-apache

