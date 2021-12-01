#!/bin/bash
yum install java-1.8.0-openjdk -y
cat >/etc/yum.repos.d/mongodb.repo <<EOL
[mongodb-org-5.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/5.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-5.0.asc
EOL
yum update -y
yum -y mongodb-org
systemctl daemon-reload
systemctl start mongod
systemctl enable mongod
