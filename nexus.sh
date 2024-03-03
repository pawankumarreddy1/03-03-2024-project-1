#!/bin/bash
apt-get update
apt-get install openjdk-8-jdk -y
cd /opt
wget https://download.sonatype.com/nexus/3/nexus-3.65.0-02-unix.tar.gz 	
tar -xvzf nexus-3.65.0-02-unix.tar.gz
mv nexus-3.65.0-02/ nexus
sudo adduser nexus
sudo chown -R nexus:nexus /opt/nexus
sudo chown -R nexus:nexus /opt/sonatype-work
sudo sed -i 's/#run_as_user=""/run_as_user="nexus"/g' /opt/nexus/bin/nexus.rc
sudo sed -i 's/-Xms2703m/-Xms512m/g' /opt/nexus/bin/nexus.vmoptions
sudo sed -i 's/-Xmx2703m/-Xmx512m/g' /opt/nexus/bin/nexus.vmoptions
sudo sed -i 's/-XX:MaxDirectMemorySize=2703m/-XX:MaxDirectMemorySize=512m/g' /opt/nexus/bin/nexus.vmoptions
cat <<EOF | sudo tee /etc/systemd/system/nexus.service
[Unit]
Description=Nexus service
After=network.target

[Service]
Type=forking
LimitNOFILE=65536
User=nexus
Group=nexus
ExecStart=/opt/nexus/bin/nexus start
ExecStop=/opt/nexus/bin/nexus stop
User=nexus
Restart=on-abort

[Install]
WantedBy=multi-user.target
EOF

# Enable and start Nexus service
systemctl enable nexus
systemctl start nexus

# Check Nexus service status
systemctl status nexus