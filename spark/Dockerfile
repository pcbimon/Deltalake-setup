FROM bitnami/spark:3.5.2
# Install curl
USER root
RUN apt-get update && apt-get install -y curl
# Switch back to the non-root user
USER 1001
# Add Delta Lake JARs to Spark classpath
# RUN curl -o /opt/bitnami/spark/jars/delta-core_2.12-2.4.0.jar https://repo1.maven.org/maven2/io/delta/delta-core_2.12/2.4.0/delta-core_2.12-2.4.0.jar
ENV SPARK_BASE_DIR=/opt/bitnami/spark
ENV SPARK_WORK_DIR=${SPARK_BASE_DIR}/work
ENV SPARK_JARS_DIR=${SPARK_BASE_DIR}/jars
ENV SPARK_CONF_DIR=${SPARK_BASE_DIR}/conf
ENV SCALA_VERSION=2.12 \
    HADOOP_CLIENT_API_VERSION=3.3.6\
    DELTA_LAKE_VERSION=3.2.0\
    AWS_SDK_BUNDLE=1.12.262
    
RUN curl "https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/$HADOOP_CLIENT_API_VERSION/hadoop-aws-$HADOOP_CLIENT_API_VERSION.jar" -o "$SPARK_JARS_DIR/hadoop-aws-$HADOOP_CLIENT_API_VERSION.jar"
RUN curl "https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/$AWS_SDK_BUNDLE/aws-java-sdk-bundle-$AWS_SDK_BUNDLE.jar" -o "$SPARK_JARS_DIR/aws-java-sdk-bundle-$AWS_SDK_BUNDLE.jar"
RUN curl "https://repo1.maven.org/maven2/io/delta/delta-spark_$SCALA_VERSION/$DELTA_LAKE_VERSION/delta-spark_$SCALA_VERSION-$DELTA_LAKE_VERSION.jar" -o "$SPARK_JARS_DIR/delta-spark_$SCALA_VERSION-$DELTA_LAKE_VERSION.jar"


# Set up MinIO/S3 configuration (add your configuration to spark-defaults.conf or pass it at runtime)
ENV MINIO_ENDPOINT=http://minio:9000
ENV MINIO_ACCESS_KEY=minio
ENV MINIO_SECRET_KEY=minio123

# ENTRYPOINT [ "/opt/bitnami/scripts/spark/entrypoint.sh" ]
# CMD ["spark-shell"]