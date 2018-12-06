FROM composer

RUN apk --no-cache add rsync

WORKDIR /data

ADD surf/composer.json .
ADD surf/composer.lock .

RUN composer install

ENTRYPOINT ["/data/bin/surf", "deploy"]