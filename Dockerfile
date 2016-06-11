FROM ubuntu:16.04
MAINTAINER Arba Sasmoyo <asasmoyo@student.uns.ac.id>

RUN sed -i "s/archive.ubuntu.com/id.archive.ubuntu.com/g" /etc/apt/sources.list
RUN apt-get update && apt-get install -y --no-install-recommends \
    software-properties-common \
    git-core composer \
    unzip \
    php7.0-cli \
    php7.0-curl \
    php7.0-dom \
    php7.0-mcrypt \
    php7.0-mbstring \
    php7.0-zip \
    && apt-add-repository -y ppa:ansible/ansible && apt-get update && apt-get install -y --no-install-recommends ansible \
    && apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/{apt,dpkg,cache,log}/
