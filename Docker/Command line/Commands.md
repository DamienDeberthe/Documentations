## Docker commands

### Infos containers and images

See containers power on:
```bash
docker ps
```

See all containers (on and off):
```bash
docker ps -a
```

See all images:
```bash
docker images
```

See container information:
```bash
docker inspect <container_name>
```

<br>


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
<br>


### Rename

Rename a container:
```bash
docker rename <actual_container_name> <new_container_name>
```

Rename an image:
```bash
docker tag <actual_image_name> <new_image_name>
```
<br>


### Commit/push containers

Commit permit to transform a container into an image:
```bash
docker commit <container_name> <image_name>
```
<br>

To push an image to Docker Hub, we have to login before:
```bash
docker login
```
After we can push our image:
```bash
docker push <image_name>
```
Remember that the <image_name> need to begin with your account name, and the image name -> <code>\<account>/\<image_name>:\<tag></code>.

<br>


### Delete containers and images

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
<br>

Stop and delete all containers + delete all images:
```bash
docker ps|sed "1 d"|awk '{print $1}'|xargs docker stop \
; docker ps -a|sed "1 d"|awk '{print $1}'|xargs docker rm \
; docker images|sed "1 d"|awk '{print $3}'|sort|uniq|xargs docker rmi -f
```
