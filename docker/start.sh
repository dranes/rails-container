#!/usr/bin/env bash

FILE=/var/www/code/Gemfile

if [ ! -f "$FILE" ]; then
    rails new /var/www/code -d mysql -s
fi

cd /var/www/code/ && bundle2.7 install && bin/rails server -b 0.0.0.0