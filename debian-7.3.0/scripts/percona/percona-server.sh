#!/bin/bash -eux

echo "Installing Percona Server 5.6"

apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
printf "deb http://repo.percona.com/apt wheezy main\ndeb-src http://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list
apt-get update
export DEBIAN_FRONTEND=noninteractive
apt-get install -y percona-server-server-5.6

# FIX access from host
