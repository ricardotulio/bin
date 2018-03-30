#!/bin/bash

docker pull php:7.1-cli-alpine
docker pull php:7.2-cli-alpine

docker pull prooph/composer:7.1
docker pull prooph/composer:7.2

docker pull ricardotulio/php:5.6.32-cli
docker pull ricardotulio/composer:php-5.6.32
docker pull ricardotulio/laravel-installer
docker pull ricardotulio/lumen-installer
docker pull ricardotulio/php-cs-fixer
docker pull ricardotulio/phpmd

docker tag ricardotulio/php:5.6.32-cli php-local-images:5.6.32
docker tag ricardotulio/php:5.6.32-cli php-local-images:5.6

docker tag php:7.1-cli-alpine php-local-images:7.1
docker tag php:7.2-cli-alpine php-local-images:7.2
docker tag php:7.2-cli-alpine php-local-images:7

docker tag ricardotulio/composer:php-5.6.32 composer-local-images:php-5.6.32
docker tag ricardotulio/composer:php-5.6.32 composer-local-images:php-5.6
docker tag prooph/composer:7.1 composer-local-images:php-7.1
docker tag prooph/composer:7.2 composer-local-images:php-7.2
docker tag prooph/composer:7.2 composer-local-images:php-7

mkdir -p $HOME/.etc/php
cp -a etc/php/* $HOME/.etc/php

cp * $HOME/.local/bin/
