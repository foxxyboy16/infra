#!/bin/bash

sudo apt update -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.4.1
rvm use 2.4.1 --default
gem install bundler -V --no-document
ruby -v && bundle -v

