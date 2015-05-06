## Fluentd Dockerfile

This repository contains **Dockerfile** for [Fluentd](http://www.fluentd.org/)

## Build
```
docker build -rm -t index.packtios.com/fluentd .
```

## Run
```
docker run -ti index.packitos.com/fluentd
```

fluentd server is listening in 24224 port by default. To obtain the IP of the
container:
```
IP=$(docker inspect -f '{{.NetworkSettings.IPAddress}}' <container_id>)
```

To test running container:

```
curl -X POST -d 'json={"tag":"debug", "message":"hello"}' "http://$1:8888/debug.test"
```
