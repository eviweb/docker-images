FROM ubuntu-debootstrap:trusty
MAINTAINER Eric VILLARD <dev@eviweb.fr>
LABEL version="0.1.0"
LABEL description="Ubuntu Trusty Minimal - PHP-7.0 CLI"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E5267A6C
RUN echo "deb http://ppa.launchpad.net/ondrej/php-7.0/ubuntu trusty main" |  tee /etc/apt/sources.list.d/php70.list
RUN echo "deb-src http://ppa.launchpad.net/ondrej/php-7.0/ubuntu trusty main" |  tee -a /etc/apt/sources.list.d/php70.list
RUN apt-get update && apt-get -yq install \
    php5-cli
