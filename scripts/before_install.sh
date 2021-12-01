#!/bin/bash
yum install java-1.8.0-openjdk -y
curl -v -O https://repo.mongodb.org/yum/redhat/6/mongodb-org/4.4/x86_64/RPMS/mongodb-org-shell-4.4.9-1.el6.x86_64.rpm -L
yum install -y mongodb-org-shell-4.0.9-1.el7.x86_64.rpm
curl -v -O https://repo.mongodb.org/yum/redhat/6/mongodb-org/4.4/x86_64/RPMS/mongodb-org-4.4.9-1.el6.x86_64.rpm -L 
yum install -y mongodb-org-4.4.9-1.el6.x86_64.rpm
yum update -y
yum -y mongodb-org
systemctl daemon-reload
systemctl start mongod
systemctl enable mongod
