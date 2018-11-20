## Docker commands

### Create containers

Simple container with interactive shell:
```bash
docker run -d --tty -i --name=<container_name> <image>
#EXEMPLE
docker run -d --tty -i --name=deb1 debian:latest
```

Container with interactive shell and port redirection:
```bash
docker run -d --tty -i -p <host_port>:<container_port> --name=<container_name> <image>
#EXEMPLE
docker run -d --tty -i -p 80:80 --name=apache1 httpd:latest
```

Container with interactive shell, port redirection and shared volumes:
```bash
docker run -d --tty -i -p <host_port>:<container_port> -v <host_dir>:<container_dir> --name=<container_name> <image>
#EXEMPLE
docker run -d --tty -i -p 8080:80 -v /var/www:/usr/share/nginx/html --name=nginx1 nginx:latest
```

### Delete

Stop a container:
```bash
docker stop <container_name>
```

Delete a container:
```bash
docker rm <container_name>
```

Delete an image:
```bash
docker rmi <image:tag>
```

Stop and delete all containers + delete all images:
```bash
docker ps|sed "1 d"|awk '{print $1}'|xargs docker stop \
; docker ps -a|sed "1 d"|awk '{print $1}'|xargs docker rm \
; docker images|sed "1 d"|awk '{print $3}'|sort|uniq|xargs docker rmi -f
```
