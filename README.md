# docker-galaxy
Docker image containing the [Galaxy](https://galaxyproject.org) platform

## Run the image from the Docker Hub
```
docker run -d -P --name docker-galaxy indigodatacloudapps/docker-galaxy
```
The Docker image is available in the [indigodatacloudapps/docker-galaxy](https://hub.docker.com/r/indigodatacloudapps/docker-galaxy/) repository at Docker Hub.


### Access via web
You have to check the mapped port with `docker port docker-galaxy | grep 80`.
The command should return something like `80/tcp -> 0.0.0.0:32770`.

Wait a few minutes after starting the container and access `http://localhost:32770/galaxy`

### Access through ssh
```
GALAXY_SSH_PORT=$(docker port docker-galaxy | grep 22 | awk '{split($3,t,":"); print t[2]}')
ssh -p $GALAXY_SSH_PORT root@localhost
```
The password to access via SSH is documented in the base image ([indigodatacloud/ubuntu-sshd](https://hub.docker.com/r/indigodatacloud/ubuntu-sshd/)).

## Build the image
```
docker build -t docker-galaxy .
```
