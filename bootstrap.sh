#!/usr/bin/env bash


sudo apt-get update  
sudo apt-get install -y python-software-properties python g++ make  
sudo add-apt-repository ppa:chris-lea/node.js  
sudo apt-get update  
sudo apt-get install nodejs << EOF
Y
EOF

apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10  
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list  
apt-get -y update  
apt-get -y install mongodb-10gen  

sudo apt-get install nginx << EOF
Y
EOF
update-rc.d nginx defaults

npm install -g grunt-cli

npm install -g bower

npm -g install sails