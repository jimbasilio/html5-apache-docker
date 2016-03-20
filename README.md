# html5-apache-docker

Apache docker image preconfigured to utilize HTML5 pushState

Recommended use is to run from your project directory and to mount shared volume directly to /usr/local/apache2/htdocs. The following assumes you run from a top level directory and are sharing the ```dist/``` folder. You can then go to http://localhost:8080 to see the site.

    sudo docker run --rm -v $(pwd)/dist:/usr/local/apache2/htdocs -p 8080:80 html5-httpd:latest

