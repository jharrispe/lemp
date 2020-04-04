FROM alpine:3.9.5
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
    php7-exif \
    php7-gd \
    php7-ctype \
    php7-soap \
    php7-bcmath \
    sudo \
    composer \
    git \
    mysql-client \
    certbot \
    certbot-nginx
RUN addgroup -S -g 500 app && adduser -S app -G app -u 500
RUN echo "app ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN chown app:app /var/tmp/nginx
COPY ./fs/ /
WORKDIR /app
CMD ["supervisord","-n","-j","/supervisord.pid"]
