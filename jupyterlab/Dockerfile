FROM jupyter/pyspark-notebook:latest

# Install Delta Lake dependencies
RUN pip install delta-spark

# Expose the default port for Jupyter Lab
EXPOSE 8888

# Start Jupyter Lab
CMD ["start-notebook.sh", "--LabApp.token=''"]