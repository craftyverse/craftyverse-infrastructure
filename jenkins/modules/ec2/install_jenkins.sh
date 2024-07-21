#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Update the package index and upgrade installed packages
sudo apt update
sudo apt upgrade -y

# Install prerequisites
sudo apt install -y wget apt-transport-https software-properties-common

# Add the Jenkins GPG key
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# Add Jenkins repository to the sources list
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update the package index
sudo apt update

# Add the Java 17 PPA repository and install Java 17
apt install openjdk-17-jdk openjdk-17-jre
sudo apt update -y

# Verify Java installation
java -version

# Install Jenkins
sudo apt install -y jenkins

# Start and enable Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins