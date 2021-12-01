#!/bin/bash
yum install java-1.8.0-openjdk -y
curl -v -O https://repo.mongodb.org/yum/redhat/6/mongodb-org/4.4/x86_64/RPMS/mongodb-org-database-tools-extra-4.4.9-1.el6.x86_64.rpm -L
curl -v -O https://repo.mongodb.org/yum/redhat/6/mongodb-org/4.4/x86_64/RPMS/mongodb-org-tools-4.4.9-1.el6.x86_64.rpm -L
curl -v -O https://repo.mongodb.org/yum/redhat/6/mongodb-org/4.4/x86_64/RPMS/mongodb-org-server-4.4.9-1.el6.x86_64.rpm -L
curl -v -O https://repo.mongodb.org/yum/redhat/6/mongodb-org/4.4/x86_64/RPMS/mongodb-org-mongos-4.4.9-1.el6.x86_64.rpm -L
curl -v -O https://repo.mongodb.org/yum/redhat/6/mongodb-org/4.4/x86_64/RPMS/mongodb-org-shell-4.4.9-1.el6.x86_64.rpm -L
curl -v -O https://repo.mongodb.org/yum/redhat/6/mongodb-org/4.4/x86_64/RPMS/mongodb-org-4.4.9-1.el6.x86_64.rpm -L 
rpm -ivh *.rpm
systemctl daemon-reload
systemctl start mongod
systemctl enable mongod
