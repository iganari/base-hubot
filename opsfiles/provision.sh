#!/bin/bash

yum -y install ca-certificates
yum -y install epel-release
yum -y install vim-enhanced
### rm /etc/localtime
### ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
service iptables stop

### install need module
yum install -y --enablerepo=epel nodejs npm redis
yum install -y gcc gcc-c++

### service redis setting
service   redis restart
chkconfig redis on

### npm global install
sudo npm update -g
sudo npm install -g n
sudo n --stable
sudo npm install -g forever inherits coffee-script hubot yo generator-hubot
