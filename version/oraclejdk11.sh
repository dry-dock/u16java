#!/bin/bash -e

echo oracle-java11-installer shared/accepted-oracle-license-v1-2 select true | debconf-set-selections
sudo add-apt-repository ppa:linuxuprising/java
sudo apt update
sudo apt install oracle-java11-installer
sudo apt install oracle-java11-set-default


echo "export JAVA_HOME=/usr/lib/jvm/java-${JAVA_VERSION}-oraclejdk-amd64" >> /etc/drydock/.env
echo "export PATH=\$PATH:/usr/lib/jvm/java-${JAVA_VERSION}-oraclejdk-amd64/bin" >> /etc/drydock/.env
