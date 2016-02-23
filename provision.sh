#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-add-repository ppa:andrei-pozolotin/maven3
apt-get update

apt-get -y install openjdk-7-jdk maven3 nodejs npm nodejs-legacy
npm install --global getpapers quickscrape