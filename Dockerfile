# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Install necessary dependencies
RUN apt-get update && apt-get install -y git

# Install PyTorch, torchvision and any additional Python packages you need
RUN pip install torch torchvision

# Copy the current directory contents into the container at /app
COPY . /app

# Define environment variable for clarity
ENV NAME MNIST

# Run MNIST training when the container launches
CMD ["python", "mnist/main.py", "--epochs", "1"]
