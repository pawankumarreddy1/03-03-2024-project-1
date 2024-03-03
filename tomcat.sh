#!/bin/bash
sudo yum update -y
sudo yum install java -y
cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.86/bin/apache-tomcat-9.0.86-windows-x64.zip

unzip apache-tomcat-9.0.86-windows-x64.zip
rm -rf apache-tomcat-9.0.86-windows-x64.zip
mv apache-tomcat-9.0.86/ tomcat9
cd tomcat9
cd bin
chmod 755 *.sh
sh startup.sh
