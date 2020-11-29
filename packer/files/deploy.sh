#!/bin/bash

git clone https://github.com/Artemmkin/reddit.git
cd reddit && bundle install 
sudo systemctl enable puma && \
sudo systemctl start puma && \
sudo systemctl status puma
