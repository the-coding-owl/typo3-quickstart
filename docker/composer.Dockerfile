FROM composer

RUN composer self-update

ENTRYPOINT ["./docker/composer/composer-entry.sh"]