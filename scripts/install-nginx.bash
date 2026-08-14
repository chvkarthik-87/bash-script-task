#!/bin/bash

sudo dnf install nginx -y

sudo systemctl enable nginx
sudo systemctl start nginx

echo "Nginx installed and started successfully."
sudo systemctl status nginx --no-pager
