#!/bin/bash

#install ruby
apt update
apt install -y ruby-full ruby-bundler build-essential

#install mongodb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 mu\
ltiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
apt-get update -y
apt-get install -y mongodb-org
systemctl start mongod
systemctl enable mongod

#deploy
git clone https://github.com/Artemmkin/reddit.git
cd reddit && bundle install
puma -d

