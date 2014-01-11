#!/bin/bash -eux

echo "Installing Redis"

wget http://www.dotdeb.org/dotdeb.gpg -O - | apt-key add -
printf "deb http://packages.dotdeb.org wheezy all\ndeb-src http://packages.dotdeb.org wheezy all" > /etc/apt/sources.list.d/dotdeb.list
# printf "deb http://packages.dotdeb.org wheezy all\ndeb-src http://packages.dotdeb.org wheezy all\n\ndeb http://packages.dotdeb.org wheezy-php55 all\ndeb-src http://packages.dotdeb.org wheezy-php55 all" > /etc/apt/sources.list.d/dotdeb.list
apt-get update
export DEBIAN_FRONTEND=noninteractive
apt-get install -y redis-server

