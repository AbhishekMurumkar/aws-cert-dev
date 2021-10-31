#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd.service
systemctl enable httpd.service
echo "<center><h1> hello from $(hostname -f)</h1></center>" > /var/www/html/index.html