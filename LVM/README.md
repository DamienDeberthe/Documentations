## LVM

Initialize physical volume(s) for use by LVM with pvcreate command:
```bash
pvcreate /dev/<DISK>
```

See physical volume:
```bash
pvdisplay
```

<br/>

Create volume group:
```bash
vgcreate <VOLUME_GROUP_NAME> /dev/<DISK>
```

See volume groups:
```bash
vgdisplay
```

<br/>

Create logical volume:
```bash
lvcreate -n <LOGICAL_VOLUME_NAME> -L <SIZE>g <VOLUME_GROUP_NAME>
```

See logical volumes:
```bash
lvdisplay
```

<br/>

Create ext4 filesystem on logical volume:
```bash
mkfs.ext4 <LOGICAL_VOLUME_NAME_DEVICE> (/dev/...)
```

<br/>

Modify /etc/fstab:
```bash
<LOGICAL_VOLUME_NAME> <PATH_TO_MOUNT> ext4 defaults 0 0
```

Mount:
```bash
mount -a
```
