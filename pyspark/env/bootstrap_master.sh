#!/bin/bash
wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
rpm -ivh mysql57-community-release-el7-9.noarch.rpm
yum install -y mysql-server mysql-connector-java 
systemctl enable mysqld 
ln -s /usr/share/java/mysql-connector-java.jar $HIVE_HOME/lib/mysql-connector-java.jar
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
pip install numpy pandas ipython[all] jupyter virtualenv
