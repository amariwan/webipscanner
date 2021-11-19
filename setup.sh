#!/bin/bash

apt install xfonts-75dpi
# pip3 install curl wget git Webipscanner libssl1.0-dev vim nmap tzdata
wget https://github.com/amariwan/webipscanner/releases/download/1.0.0/webipscanner_1.0.0-1.stretch_amd64.deb
dpkg -i webipscanner_1.0.0-1.stretch_amd64.deb

mkdir notes
mkdir xml

python3 manage.py migrate
sleep 1
echo "Use this token: $(python3 dashboard/token.py | cut -f 2 -d ' ')"
sleep 1
python3 manage.py runserver
