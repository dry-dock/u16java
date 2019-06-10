#!/bin/bash -e

echo oracle-java11-installer shared/accepted-oracle-license-v1-2 select true | debconf-set-selections
sudo add-apt-repository ppa:linuxuprising/java
sudo apt update
sudo apt install oracle-java11-installer
