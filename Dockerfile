FROM alpine:3.3
MAINTAINER Guo Gang <guogang@mrpomato.com>

ENV LANG="en_US.UTF-8" \
	LC_ALL="en_US.UTF-8" \
	LANGUAGE="en_US.UTF-8"

RUN apk add --update \
	php-gettext \
	php-json \
	php-xml \
	php-phar \
	php-opcache \
	php-mcrypt \
	php-curl \
	php-pdo_mysql \
	php-openssl \
	php-mysqli \
	php-iconv \
	php-zlib \
	php-memcache \
	php-ctype \
	&& rm -fr /tmp/src \
	&& rm -fr /var/cache/apk/*

COPY php.ini /etc/php/

ENTRYPOINT /bin/sh
