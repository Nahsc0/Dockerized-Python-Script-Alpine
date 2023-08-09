FROM alpine:latest

# Update apk repositories
RUN apk update

# Install Python
RUN apk add --no-cache python3 py3-pip

# Create a working directory
WORKDIR /app

# Copy your Python script to the Docker image
COPY test.py .

# Run the Python script
CMD ["python3", "test.py"]
