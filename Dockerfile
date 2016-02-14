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

# Copy file in as daemon user
USER daemon

# httpd.conf turns on rewrite module and rewrites 404 errors to load index.html then redirect client
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

USER root

# Define default command to start bash. 
CMD [ "httpd-foreground" ]

