## Goal

Simple docker image to clean up

## How to use it?

in docker-compose: 
```
   transmission-clean:
      container_name: transmission-clean
      image: transmission-clean:latest
      environment:
        - SERVER=container_name:9091
      networks:
        - net
```

