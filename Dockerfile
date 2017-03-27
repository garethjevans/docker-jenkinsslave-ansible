FROM garethjevans/jenkinsslave-maven:v1.4.5-alpine

USER root

RUN apk update && \
    apk --update add python py-pip openssl ca-certificates && \
    apk --update add --virtual build-dependencies python-dev libffi-dev openssl-dev build-base curl && \
    pip install --upgrade pip cffi && \
    pip install ansible && \
    pip install softlayer && \
    pip install docker-py && \
    pip install pyvmomi && \
    apk del build-dependencies && \
    rm -rf /var/cache/apk/* && \
    adduser -D -u 1001 ansible && \
    mkdir -p /etc/ansible

USER jenkins
WORKDIR /home/jenkins
