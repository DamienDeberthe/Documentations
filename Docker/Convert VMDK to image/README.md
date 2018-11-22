## Convert VMDK to image

### Convert VMDK to IMG
Install required packages:
```bash
apt-get update && apt-get install -y qemu libguestfs-tools
```

<br>

Convert our VMDK file to IMG:
```bash
qemu-img convert -f vmdk -O raw <VM>.vmdk <VM>.img
```

<br>

* BEFORE convert our partition(s), we have to know wich partition(s) we want to convert into our Docker image. For that, power on the VM and execute <code>df -h</code> to see the partition(s).

<br>

Execute "guestfish" for recolt our partition(s):
```bash
guestfish -a <VM>.img --ro
```

<br>

First, run the image (it will take long time):
```bash
$ ><fs> run
```

See the several partitions:
```bash
><fs> list-filesystems
```

For example, you will see something like this:
```bash
/dev/sda1: ext4
/dev/sda2: unknown
/dev/sda5: ext4
/dev/sda6: ext4
/dev/sda7: swap
/dev/sda8: ext4
/dev/sda9: ext4
```

Now we have to mount the partition(s) we want to convert and where (this is an example here):
```bash
><fs> mount /dev/sda1 /
><fs> mount /dev/sda5 /usr
><fs> mount /dev/sda6 /var
><fs> mount /dev/sda8 /tmp
><fs> mount /dev/sda9 /home
```

Last step, we have to convert our image into ".xz" file:
```bash
><fs> tar-out / - | xz --best >>  <IMG>.xz
><fs> exit
```

<br>

### Import into Docker

Now we have our file "<IMG>.xz", we have to create the Docker image:
```bash
cat <IMG>.xz | docker import - <MyAwesomeDockerImage>
```

<br>

First test to run the Docker container:
```bash
docker run -it <MyAwesomeDockerImage> bash
```
Secondly, run it into a daemon:
```bash
docker run -d --tty -i --name=<MyAwesomeDockerCT> <MyAwesomeDockerImage> bash
```
You can run services like into a dockerfile for start httpd for example (<code>docker run -d --tty -i  -p 80:80 <MyAwesomeDockerCT> <MyAwesomeDockerImage> apachectl -D FOREGROUND</code>).

<br><br>

Source: https://blog.inslash.com/how-to-convert-vmdk-to-a-docker-image-be939745ed8a
