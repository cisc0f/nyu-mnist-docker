FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN pip install torch torchvision

COPY . /app

ENV NAME MNIST

CMD ["python", "mnist/main.py", "--epochs", "2", "--lr", "0.5"]
