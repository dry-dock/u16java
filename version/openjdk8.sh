#!/bin/bash -e


export JAVA_VERSION=8
echo "================ Installing openjdk"$JAVA_VERSION"-installer ============================="
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update
apt-get install -y openjdk-"$JAVA_VERSION"-jdk
add-apt-repository ppa:maarten-fonville/ppa
apt-get update
apt-get install icedtea-"$JAVA_VERSION"-plugin

echo "export JAVA_HOME=/usr/lib/jvm/java-${JAVA_VERSION}-openjdk-amd64" >> /etc/drydock/.env
echo "export PATH=\$PATH:/usr/lib/jvm/java-${JAVA_VERSION}-openjdk-amd64/bin" >> /etc/drydock/.env
