#!/bin/bash
sudo su<<EOF
apt install awscli -y
cd /tmp
sudo wget https://use1apcrowdstrike.s3-eu-west-1.amazonaws.com/cstrikeubuntu2019/falcon-sensor_3.8.0-3902_amd64.deb
sudo apt-get install -y libnl1
sudo apt-get install -y libnl-genl-3-200
sudo apt-get install -y libnl-3-200
sudo apt-get -y -f install
sudo dpkg -i /tmp/falcon-sensor_3.8.0-3902_amd64.deb
sudo /opt/CrowdStrike/falconctl -s -f --cid=774CE369AF7B489CB95EBF8D34DF79FB-F9
sudo service falcon-sensor restart
EOF