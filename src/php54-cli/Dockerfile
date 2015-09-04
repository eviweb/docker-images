FROM ubuntu-debootstrap:precise
MAINTAINER Eric VILLARD <dev@eviweb.fr>
LABEL version="0.1.0"
LABEL description="Ubuntu Precise Minimal - PHP-5.4 CLI"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E5267A6C
RUN echo "deb http://ppa.launchpad.net/ondrej/php5-oldstable/ubuntu precise main" |  tee /etc/apt/sources.list.d/php54.list
RUN echo "deb-src http://ppa.launchpad.net/ondrej/php5-oldstable/ubuntu precise main" |  tee -a /etc/apt/sources.list.d/php54.list
RUN apt-get update && apt-get -yq install \
    php5-cli
