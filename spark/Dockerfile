FROM bitnami/spark:3.5.2
# Install curl
USER root
RUN apt-get update && apt-get install -y curl
# Set Spark environment variables for Hadoop integration (Hadoop and S3 connectors already present)
RUN export SPARK_DIST_CLASSPATH=$(/opt/bitnami/spark/bin/spark-classpath)
# Switch back to the non-root user (optional)
USER 1001

# Add Delta Lake JARs to Spark classpath
# RUN curl -o /opt/bitnami/spark/jars/delta-core_2.12-2.4.0.jar https://repo1.maven.org/maven2/io/delta/delta-core_2.12/2.4.0/delta-core_2.12-2.4.0.jar

# Copy jar file from /jars to /opt/bitnami/spark/jars
COPY ./jars/* /opt/bitnami/spark/jars/

# Set up MinIO/S3 configuration (add your configuration to spark-defaults.conf or pass it at runtime)
ENV MINIO_ENDPOINT=http://minio:9000
ENV MINIO_ACCESS_KEY=minio
ENV MINIO_SECRET_KEY=minio123

ENTRYPOINT [ "/opt/bitnami/scripts/spark/entrypoint.sh" ]
CMD ["spark-shell"]