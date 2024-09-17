FROM bitnami/spark:3.5.2
# Install curl
USER root
RUN apt-get update && apt-get install -y curl

# Switch back to the non-root user (optional)
USER 1001

# Install hadoop-aws and aws-java-sdk
RUN curl -o /opt/bitnami/spark/jars/hadoop-aws-3.3.6.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.6/hadoop-aws-3.3.6.jar \
    && curl -o /opt/bitnami/spark/jars/aws-java-sdk-bundle-1.12.367.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.367/aws-java-sdk-bundle-1.12.367.jar

# Set SPARK_CLASSPATH
ENV SPARK_CLASSPATH="/opt/bitnami/spark/jars/hadoop-aws-3.3.6.jar:/opt/bitnami/spark/jars/aws-java-sdk-bundle-1.12.367.jar"