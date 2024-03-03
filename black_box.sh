#!/bin/bash
wget https://github.com/prometheus/blackbox_exporter/releases/download/v0.14.0/blackbox_exporter-0.14.0.linux-amd64.tar.gz
tar xvzf blackbox_exporter-0.14.0.linux-amd64.tar.gz
cd blackbox_exporter-0.14.0.linux-amd64
sudo mv blackbox_exporter /usr/local/bin
sudo mkdir -p /etc/blackbox
sudo mv blackbox.yml /etc/blackbox
sudo useradd -rs /bin/false blackbox
sudo chown blackbox:blackbox /usr/local/bin/blackbox_exporter
sudo chown -R blackbox:blackbox /etc/blackbox/*
cd /lib/systemd/system
sudo touch blackbox.service
vi blackbox.service
sudo systemctl enable blackbox.service 
sudo systemctl start blackbox.service
sudo systemctl status blackbox.service