#!/bin/bash

# Updating system for the first time
sudo apt-get update -y && sudo apt upgrade -y 

# Installing dependencies - Java
sudo apt-get install fontconfig openjdk-17-jre -y

# Adding Keys
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Updating latest packages and installing Jenkins
sudo apt-get update -y && sudo apt-get install jenkins -y

echo "Jenkins installation completed"