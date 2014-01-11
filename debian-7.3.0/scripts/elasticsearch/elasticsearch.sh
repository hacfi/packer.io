#!/bin/bash -eux

echo "Installing Elasticsearch"

apt-get install -y openjdk-7-jre-headless

wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
echo "deb http://packages.elasticsearch.org/elasticsearch/0.90/debian stable main" > /etc/apt/sources.list.d/elasticsearch.list
apt-get update
apt-get install -y elasticsearch
