FROM alpine:3.9.4
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
    php7-simplexml \
    php7-fileinfo \
    php7-pdo \
    php7-pdo_mysql \
    sudo \
    composer \
    git \
    certbot \
    certbot-nginx
RUN addgroup -S app && adduser -S app -G app
RUN echo "app ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
COPY ./fs/ /
WORKDIR /app
CMD ["supervisord","-n","-j","/supervisord.pid"]
