#!/bin/bash

BASEPATH=$(cd `dirname $0`; pwd)


### install hubot set
sudo npm install -g n
sudo n stable
sudo npm install -g inherits coffee-script hubot
sudo npm install -g yo generator-hubot

mkdir hogehoge ; cd hogehoge
sudo chown -R vagrant.vagrant /usr/local/lib/node_modules
sudo npm install -g yo generator-hobot
yo hubot

exit
