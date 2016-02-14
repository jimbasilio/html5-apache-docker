#!/bin/sh

sudo docker run -d -v $(pwd)/../../dist:/usr/local/apache2/htdocs --name=html5-apache -p 8080:80 -t html5-apache

