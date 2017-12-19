# docker-jenkinsslave-ansible

Jenkins Slave docker image, based off [garethjevans/jenkinsslave-ubuntu](https://hub.docker.com/r/garethjevans/jenkinsslave-ubuntu/), with [Ansible](https://www.ansible.com/) installed

This is available on Docker hub as [garethjevans/jenkinsslave-ansible](https://hub.docker.com/r/garethjevans/jenkinsslave-ansible/)

## Usage

To create a basic Jenkins Ansible Slave instance use:

```
docker run \
    --detach \
    --env JENKINS_MASTER=<JENKINS_MASTER_ADDRESS> \
    --env JENKINS_USERNAME=<JENKINS_USERNAME> \
    --env JENKINS_PASSWORD=<JENKINS_PASSWORD> \
    --env JENKINS_EXECUTORS=1 \
    --env JENKINS_LABELS=ansible \
    --env JENKINS_NAME=ansible-slave \
    --env LANG=C.UTF-8 \
    --name jenkins_ansible \
    --volume /etc/localtime:/etc/localtime:ro \
    garethjevans/jenkinsslave-ansible:latest
```

Obviously, you'll need an instance of Jenkins Master as well, try [garethjevans/jenkins](https://hub.docker.com/r/garethjevans/jenkins/).
