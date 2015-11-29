#!/bin/bash

BASEPATH=$(cd `dirname $0`; pwd)

### install php 5.6
yum -y install epel-release
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

yum install -y vim-enhanced 
yum install -y --enablerepo=epel nodejs npm redis

### setting redis
service   redis restart
chkconfig redis on

### install hubot set
npm install -g n
n stable
npm install -g inherits coffee-script hubot
npm install -g yo generator-hubot


exit
