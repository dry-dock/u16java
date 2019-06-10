#!/bin/bash -e


export JAVA_VERSION=8
echo "================ Installing openjdk"$JAVA_VERSION"-installer ============================="
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update
apt-get install -y openjdk-"$JAVA_VERSION"-jdk
add-apt-repository ppa:maarten-fonville/ppa
apt-get update
apt-get install icedtea-"$JAVA_VERSION"-plugin
