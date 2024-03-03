#!/bin/bash
sudo yum update -y 
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo yum install java -y 
sudo yum install jenkins git -y
sudo systemctl enable jenkins
sudo systemctl start jenkins

wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.zip

unzip apache-maven-3.9.6-bin.zip

sudo mv apache-maven-3.9.6 /opt

echo "export M2_HOME=/opt/apache-maven-3.9.6" >> ~/.bashrc
echo "export PATH=\$PATH:\$M2_HOME/bin" >> ~/.bashrc
source ~/.bashrc