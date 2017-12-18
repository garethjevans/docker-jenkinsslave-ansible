FROM garethjevans/jenkinsslave-ubuntu:v2.0-pre2

USER root

RUN apt-get update && \
    apt-get install -y software-properties-common 

RUN apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y python-pip ansible curl && \
    pip install softlayer && \
    pip install docker-py && \
    pip install pysphere && \
    adduser --disabled-password --gecos '' ansible

USER jenkins
WORKDIR /home/jenkins
