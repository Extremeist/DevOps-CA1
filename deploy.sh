#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop DevOps-CA1
#cd Devops-CA1/
npm install

# Restart the application using pm2
pm2 stop app || true
pm2 start app.js --name app

pm2 start ./bin/www --name DevOps-CA1 --env=production