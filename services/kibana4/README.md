# kibana 4 in docker

This is dockerized version of [kibana 4](https://github.com/elasticsearch/kibana)
in a small 60mb container image.

It's a clone from [@bobrik](https://github.com/bobrik/docker-kibana4).

## Build:

```
docker build -t sfrek/kibana4 .
```

## Run:

```
docker-compose up
```

__or__

```
fig -f docker-compose.yml up -d
```
