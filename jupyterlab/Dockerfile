FROM patipatc/pyspark-notebook:py3.12

# copy requirements.txt to the image
COPY requirements.txt /tmp/

# Install dependencies
RUN pip install -r /tmp/requirements.txt

# Expose the default port for Jupyter Lab
EXPOSE 8888

# Set up JupyterLab to run in the work directory for the new user
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser","--LabApp.token=''"]