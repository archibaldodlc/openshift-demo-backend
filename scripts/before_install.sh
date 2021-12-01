#!/bin/bash
cd /home/ec2-user/server/scripts
sudo yum install java-1.8.0-openjdk -y
sudo cp ./mongodb.repo /etc/yum.repos.d/
sudo yum update -y
sudo yum -y mongodb-org
sudo systemctl daemon-reload
sudo systemctl start mongod
sudo systemctl enable mongod
