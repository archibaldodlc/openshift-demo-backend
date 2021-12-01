#!/bin/bash
sleep 40
cat >/etc/yum.repos.d/mongodb-org-5.0.repo <<EOL
[mongodb-org-5.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/5.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-5.0.asc
EOL
sleep 30
yum install mongodb-org java-1.8.0-openjdk -y
systemctl daemon-reload
systemctl start mongod
systemctl enable mongod
echo 'db.createUser({ user: "mongodbtest", pwd: "password123", roles: [{ role: "readWrite", db: "test" }]});' | mongo test