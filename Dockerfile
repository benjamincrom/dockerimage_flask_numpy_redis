FROM ubuntu:latest
MAINTAINER Benjamin Crom "benjamincrom@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential redis-server xvfb
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
