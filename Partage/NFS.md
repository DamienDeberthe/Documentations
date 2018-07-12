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


### Client NFS

#### Installation
```bash
apt-get update \
&& apt-get install nfs-common
```

#### Configuration
* Test with command <code>mount</code> :
```bash
mount 
```

* Permanent config with <code>/etc/fstab</code> :
```bash

```
