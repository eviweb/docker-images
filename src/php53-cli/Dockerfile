FROM ubuntu-debootstrap:precise
MAINTAINER Eric VILLARD <dev@eviweb.fr>
LABEL version="0.1.0"
LABEL description="Ubuntu Precise Minimal - PHP-5.3 CLI"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -yq install \
    php5-cli
