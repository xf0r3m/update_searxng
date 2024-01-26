#!/bin/bash

if [ ! -d ~/Downloads ]; then mkdir ~/Downloads; fi
cd ~/Downloads;

if [ -d searxng ]; then rm -rf searxng; fi

git clone https://github.com/searxng/searxng.git searxng;
cd searxng;

sed -i '355i _t="-t 1"' ~/Downloads/searxng/utils/lib.sh;
sudo -H ./utils/searxng.sh instance update

sudo cp -vv /home/xf0r3m/searxng.png /usr/local/searxng/searxng-src/searx/static/themes/simple/img
sudo cp -vv /home/xf0r3m/favicon.png /usr/local/searxng/searxng-src/searx/static/themes/simple/img
sudo rm -v /usr/local/searxng/searxng-src/searx/static/themes/simple/img/favicon.svg
sudo ln -v -s /usr/local/searxng/searxng-src/searx/static/themes/simple/img/favicon.png /usr/local/searxng/searxng-src/searx/static/themes/simple/img/favicon.svg
