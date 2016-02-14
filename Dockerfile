# LICENSE MIT License 2016
#
# PROJECT
# -----------------------------------------
# This Dockerfile will build an apache image preconfigured with URL Rewriting suitable for use in HTML5 pushState apps (such as angular 1 or 2)
# 
# HOW TO BUILD THIS IMAGE
# -----------------------------------------
# Put all downloaded files in the same directory as this Dockerfile
# Run: 
#      $ ./build.sh
#

# Pull base apache image
# ---------------
FROM httpd:2.4

# Maintainer
# ----------
MAINTAINER Jim Basilio <jim.basilio@gmail.com>

# Root commands
USER root

# httpd.conf turns on rewrite module and also allows overrides to 
# /usr/local/apache2/htdocs in order to allow htaccess support
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./htaccess /usr/share/htdocs/.htaccess

# Define default command to start bash. 
CMD [ "httpd-foreground" ]

