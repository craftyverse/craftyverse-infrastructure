#!/bin/bash
# Update the package index
echo "Updating package index..."
sudo apt-get update -y

# Install dependencies
echo "Installing dependencies..."
sudo apt-get install -y software-properties-common

# Add the PPA for OpenJDK 17
echo "Adding PPA for OpenJDK 17..."
sudo add-apt-repository ppa:openjdk-r/ppa -y

# Update the package index again
echo "Updating package index..."
sudo apt-get update -y

# Install OpenJDK 17
echo "Installing OpenJDK 17..."
sudo apt-get install -y openjdk-17-jdk

# Verify the installation
echo "Verifying Java installation..."
java -version

# Update the package index
echo "Updating package index..."
sudo apt-get update -y

# Install dependencies
echo "Installing dependencies..."
sudo apt-get install -y wget gnupg

# Add the Jenkins Debian repository
echo "Adding Jenkins repository..."
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null


# Update the package index again
echo "Updating package index..."
sudo apt-get update -y

# Install Jenkins
echo "Installing Jenkins..."
sudo apt-get install -y jenkins

# Enable and start Jenkins service
echo "Enabling and starting Jenkins service..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Verify Jenkins service status
echo "Verifying Jenkins service status..."
sudo systemctl status jenkins