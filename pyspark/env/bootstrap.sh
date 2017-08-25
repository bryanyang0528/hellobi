sudo yum -y update
sudo yum -y upgrade
sudo yum groupinstall -y development
sudo yum install -y java-1.8.0-openjdk net-tools rsync mlocate wget vim \
	gcc zlib-dev openssl-devel sqlite-devel bzip2-devel python-devel
# set Java
echo 'export JAVA_HOME=/usr/lib/jvm/jre' >> /etc/profile.d/java.sh
echo 'export PATH=/usr/lib/jvm/jre/bin:$PATH' >> /etc/profile.d/java.sh

# sshkey
sudo ssh-keygen -t rsa -f ~/.ssh/id_rsa

## hadoop 
tar xzf /vagrant/files/hadoop-2.8.1.tar.gz
mv hadoop-2.8.1 /usr/local/hadoop
cp /vagrant/conf/hadoop/hadoop.sh /etc/profile.d/
cp /vagrant/conf/hadoop/* /usr/local/hadoop/etc/hadoop

## Hive 
tar xzf /vagrant/files/apache-hive-2.1.1-bin.tar.gz
mv apache-hive-2.1.1-bin /usr/local/hive
cp /vagrant/conf/hive/hive.sh /etc/profile.d/
cp /vagrant/conf/hive/* /usr/local/hive/conf

## Spark
tar xzf /vagrant/files/spark-2.1.1-bin-hadoop2.7.tgz
mv spark-2.1.1-bin-hadoop2.7 /usr/local/spark
cp /vagrant/conf/spark/spark.sh /etc/profile.d/
cp /vagrant/conf/spark/* /usr/local/spark/conf

# set hosts
echo '10.211.55.100 master' >> /etc/hosts
echo '10.211.55.101 node1' >> /etc/hosts
echo '10.211.55.102 node2' >> /etc/hosts
