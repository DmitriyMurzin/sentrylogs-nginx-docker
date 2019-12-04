#LABEL maintainer="dmitriy.murzin@gmail.com"

# from ubuntu
FROM ubuntu:18.04

# update repo
RUN apt update \
# install pip
 && apt install -y python-pip \
# install sentrylogs
 && pip install sentrylogs \
# clear chache
 && apt clean \
 && rm -rf /var/lib/apt/lists/*

# run sentrylogs
#CMD sentrylogs
