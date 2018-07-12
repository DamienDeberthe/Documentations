### Server NFS

#### Installation
```bash
apt-get update \
&& apt-get install nfs-kernel-server
```

#### Configuration
File config is <code>/etc/exports</code> :
```bash
# Write access
/share/dir1 192.168.0.0/24(rw,no_root_squash) 192.168.1.1(rw,no_root_squash)
# Read only access
/share/dir2 192.168.0.0/24(ro)
```
<br/>

### Client NFS

#### Installation
```bash
apt-get update \
&& apt-get install nfs-common
```

#### Configuration
* A simple test with the command <code>mount</code> :
```bash
mount -t nfs server-nfs.domain.com:/share/dir1 /mnt/dir1
```
<br/>

* Permanent config with <code>/etc/fstab</code> :
```bash
server-nfs.domain.com:/share/dir1   /mnt/dir1   nfs   rw,tcp,soft     0       0
```
After, send this command to connect :
```bash
mount -a
```
