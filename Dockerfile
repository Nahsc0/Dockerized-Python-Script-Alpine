# Pull base image.  
FROM python:3.8-slim-buster

# Update package lists and install Xvfb
RUN apt-get update && apt-get install -y xvfb

# Install all requirements for Python GUI creation.
RUN apt-get install -y python3-tk 

# Set a directory for the app
WORKDIR /app

# Copy your Python script to the Docker image
COPY test.py .

# Configure the container to use Xvfb and run the Python script
CMD xvfb-run -s "-screen 0 1024x768x24" python3 test.py
