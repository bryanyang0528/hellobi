#!/bin/bash
TARGET=files
HADOOP_VERSION=2.8.1
HIVE_VERSION=2.1.1
SPARK_VERSION=2.1.1
HADOOP_FILE=hadoop-$HADOOP_VERSION.tar.gz
HIVE_FILE=apache-hive-$HIVE_VERSION-bin.tar.gz
SPARK_FILE=spark-$SPARK_VERSION-bin-hadoop2.7.tgz

if [ ! -f "$TARGET/$HADOOP_FILE" ]; then
  echo "http://archive.apache.org/dist/hadoop/core/$HADOOP_VERSION/$HADOOP_FILE is downloading"
  curl http://archive.apache.org/dist/hadoop/core/hadoop-$HADOOP_VERSION/$HADOOP_FILE -o $TARGET/$HADOOP_FILE
fi
echo "$HADOOP_FILE is download"

if [ ! -f "$TARGET/$HIVE_FILE" ]; then
  echo "http://archive.apache.org/dist/hive/hive-$HIVE_VERSION/$HIVE_FILE is downloading "
  curl http://archive.apache.org/dist/hive/hive-$HIVE_VERSION/$HIVE_FILE -o $TARGET/$HIVE_FILE
fi
echo "$HIVE_FILE is download"

if [ ! -f "$TARGET/$SPARK_FILE" ]; then
  echo "http://archive.apache.org/dist/spark/spark-$SPARK_VERSION/$SPARK_FILE is downloading"
  curl http://archive.apache.org/dist/spark/spark-$SPARK_VERSION/$SPARK_FILE -o $TARGET/$SPARK_FILE
fi
echo "$SPARK_FILE is download"
