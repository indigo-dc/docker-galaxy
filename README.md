# docker-galaxy
Docker image containing the galaxy platform

## Build
```
docker build -t docker-galaxy .
```

## Run the image
```
docker run -d -P -name docker-galaxy docker-galaxy
```

### Access via web
You have to check the mapped port with `docker port docker-galaxy | grep 8080`. 
The command should return something like `8080/tcp -> 0.0.0.0:32770`.

Wait a few minutes after starting the container and access `http://localhost:32770`

### Access through ssh
```
GALAXY_SSH=$(docker port docker-galaxy | grep 22 | awk '{split($3,t,":"); print t[2]}')
ssh -p GALAXY_SSH root@localhost
```
