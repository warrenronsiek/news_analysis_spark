#!/usr/bin/env bash

#SPARK_HOME=/usr/lib/spark
#$SPARK_HOME/bin/spark-shell --packages databricks:spark-corenlp:0.2.0-s_2.10
#echo "spark.jars.packages"

sudo aws s3 cp s3://warren-datasets/spark-corenlp-0.2.0-s_2.10.jar /usr/lib/spark/jars/spark-corenlp-0.2.0-s_2.10.jar
sudo aws s3 cp s3://warren-datasets/stanford-english-kbp-corenlp-2016-10-31-models.jar /usr/lib/spark/jars/stanford-english-kbp-corenlp-2016-10-31-models.jar
sudo aws s3 cp s3://warren-datasets/stanford-english-corenlp-2016-10-31-models.jar /usr/lib/spark/jars/stanford-english-corenlp-2016-10-31-models.jar
sudo aws s3 cp s3://warren-datasets/stanford-corenlp-full-2016-10-31.zip ./stanford-corenlp-full-2016-10-31.zip
unzip stanford-corenlp-full-2016-10-31.zip
sudo cp -r ./stanford-corenlp-full-2016-10-31/*.jar /usr/lib/spark/jars
rm -rf ./stanford-corenlp-full-2016-10-31