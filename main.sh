#!/bin/sh

/etc/bootstrap.sh

cd $HADOOP_PREFIX

bin/hdfs dfsadmin -safemode leave

# show files in hdfs input directory
bin/hdfs dfs -ls input | head -6

# execute hadoop grep example
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.0.jar grep input output 'dfs[a-z.]+'

# show output from hadoop job
bin/hdfs dfs -cat output/* | head -3
