import os
import sys

spark_home = os.environ['SPARK_HOME']
sys.path.insert(0, os.path.join(spark_home, 'python'))
sys.path.insert(0, os.path.join(spark_home, 'python/lib/py4j-0.10.4-src.zip'))

from pyspark.sql import SparkSession

spark = SparkSession.builder.master("local") \
   .appName("test") \
   .enableHiveSupport() \
   .getOrCreate()

sc = spark.sparkContext
