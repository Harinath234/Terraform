#!/bin/bash

yum install httpd -y
systemctl start httpd 
systemctl enable httpd 
echo "THIS IS B16 SAMPLE FACEBOOK PAGE DEPLOYED USING TERRAFORM" > /var/www/html/index.html