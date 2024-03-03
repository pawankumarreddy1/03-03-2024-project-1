# #!/bin/bash
# sudo su -
# sudo apt update

# date
# timedatectl
# sudo timedatectl set-timezone Asia/Kolkata
# timedatectl
# Date

# hostnamectl set-hostname sonarqube
# bash

# apt-get install openjdk-17-jdk -y       ## For sonarqube-10.0.0.68432.zip
# java -version         

# cd /opt/
# wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.0.0.68432.zip
# apt install unzip
# unzip sonarqube-10.0.0.68432.zip
# ls
# rm -rf sonarqube-10.0.0.68432.zip
# mv sonarqube-10.0.0.68432 sonarqube
# ls

# useradd -d /opt/sonarqube sonar
# cat /etc/passwd | grep sonar
# ls -ld /opt/sonarqube
# chown -R sonar:sonar /opt/sonarqube
# ls -ld /opt/sonarqube

# cat >> /etc/systemd/system/sonarqube.service <<EOL
# [Unit]
# Description=SonarQube service
# After=syslog.target network.target

# [Service]
# Type=forking
# User=sonar
# Group=sonar
# PermissionsStartOnly=true
# ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start 
# ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop
# StandardOutput=syslog
# LimitNOFILE=65536
# LimitNPROC=4096
# TimeoutStartSec=5
# Restart=always

# [Install]
# WantedBy=multi-user.target
# EOL


# ls -l /etc/systemd/system/sonarqube.service

# systemctl start sonarqube.service
# systemctl enable sonarqube.service
# systemctl status sonarqube.service
