FROM alpine:3.14
RUN apk --update add \
    nginx \
    supervisor \
    php7-fpm \
    php7-curl \
    php7-json \
    php7-zip \
    php7-zlib \
    php7-session \
    php7-mbstring \
    php7-dom \
    php7-session \
    php7-tokenizer \
    php7-xml \
    php7-xmlwriter \
    php7-xmlreader \
    php7-simplexml \
    php7-fileinfo \
    php7-pdo \
    php7-pdo_mysql \
    php7-pdo_sqlite \
    php7-exif \
    php7-gd \
    php7-ctype \
    php7-soap \
    php7-bcmath \
    php7-mysqli \
    sudo \
    composer \
    git \
    mysql-client \
    certbot \
    certbot-nginx
RUN addgroup -S -g 1000 app && adduser -S app -G app -u 1000
RUN echo "app ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN chown -R app:app /var/lib/nginx && chmod -R 755 /var/lib/nginx
COPY ./fs/ /
WORKDIR /app
CMD ["supervisord","-n","-j","/supervisord.pid"]
