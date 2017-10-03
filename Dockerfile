FROM alpine:3.4
MAINTAINER Jeff Roberts <jroberts@datapipe.com>

# Add mirror repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories ; \ 
    echo "http://dl-3.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories ; \ 
    echo "http://dl-4.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories ; \ 
    echo "http://dl-5.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories

RUN apk update &&
    apk add openrc \
            bash \
            vim \
            bind-tools 
