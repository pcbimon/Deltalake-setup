FROM bitnami/spark:3.5.2-debian-12-r3
# Install curl
USER root
RUN apt-get update && apt-get install -y curl

# Switch back to the non-root user (optional)
USER 1001

ARG DELTA_CORE_VERSION=2.12-2.4.0
ARG HADOOP_CLIENT_API_VERSION=3.1.0
ARG AWS_SDK_BUNDLE=1.11.271
COPY delta-spark_${DELTA_CORE_VERSION}.jar /opt/bitnami/spark/jars/delta-spark_${DELTA_CORE_VERSION}.jar
COPY aws-java-sdk-bundle-${AWS_SDK_BUNDLE}.jar /opt/bitnami/spark/jars/aws-java-sdk-bundle-${AWS_SDK_BUNDLE}.jar
COPY hadoop-aws-${HADOOP_CLIENT_API_VERSION}.jar /opt/bitnami/spark/jars/hadoop-aws-${HADOOP_CLIENT_API_VERSION}.jar