FROM composer

RUN composer self-update

ENTRYPOINT ["./composer/composer-entry.sh"]