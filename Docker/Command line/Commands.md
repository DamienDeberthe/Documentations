## Docker commands

### Create containers

Simple container with interactive shell:
```bash
docker run -d --tty -i --name=<name> <image>
#EXEMPLE
docker run -d --tty -i --name=deb1 debian:latest
```

Container with interactive shell and port redirection:
```bash
docker run -d --tty -i -p <host_port>:<container_port> --name=<name> <image>
#EXEMPLE
docker run -d --tty -i -p 80:80 --name=apache1 httpd:latest
```

Container with interactive shell, port redirection and shared volumes:
```bash
docker run -d --tty -i -p <host_port>:<container_port>  -v <host_dir>:<container_dir> --name=nginx1 nginx:latest
```
