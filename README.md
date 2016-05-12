# docker-galaxy
Docker image containing the [Galaxy](https://galaxyproject.org) platform

## Run the image from the Docker Hub
```
docker run -d -P --name docker-galaxy indigodatacloud/docker-galaxy
```
The Docker image is available in the [indigodatacloud/docker-galaxy](https://hub.docker.com/r/indigodatacloud/docker-galaxy/) repository at Docker Hub.


### Access via web
You have to check the mapped port with `docker port docker-galaxy | grep 8080`.
The command should return something like `8080/tcp -> 0.0.0.0:32770`.

Wait a few minutes after starting the container and access `http://localhost:32770`

### Access through ssh
```
GALAXY_SSH_PORT=$(docker port docker-galaxy | grep 22 | awk '{split($3,t,":"); print t[2]}')
ssh -p $GALAXY_SSH_PORT root@localhost
```

## Build the image
```
docker build -t docker-galaxy .
```
