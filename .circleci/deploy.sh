#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop DevOps-CA1
cd SimpleApplication/
npm install
pm2 start ./bin/www --name DevOps-CA1 --env=production