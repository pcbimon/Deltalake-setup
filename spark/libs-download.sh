#!/bin/bash

SCALA_VERSION=2.12
HADOOP_CLIENT_API_VERSION=3.3.6
DELTA_LAKE_VERSION=2.4.0
AWS_SDK_BUNDLE=1.12.262

curl "https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/$HADOOP_CLIENT_API_VERSION/hadoop-aws-$HADOOP_CLIENT_API_VERSION.jar" -o ./jars/hadoop-aws-$HADOOP_CLIENT_API_VERSION.jar
curl "https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/$AWS_SDK_BUNDLE/aws-java-sdk-bundle-$AWS_SDK_BUNDLE.jar" -o ./jars/aws-java-sdk-bundle-$AWS_SDK_BUNDLE.jar
curl "https://repo1.maven.org/maven2/io/delta/delta-spark_$SCALA_VERSION/$DELTA_LAKE_VERSION/delta-spark_$SCALA_VERSION-$DELTA_LAKE_VERSION.jar" -o ./jars/delta-spark_$SCALA_VERSION-$DELTA_LAKE_VERSION.jar
