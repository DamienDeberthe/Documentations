## KVM


### Informations

List VM running:
```bash
virsh list
```

Informations about VM:
```bash
virsh dominfo <VM_name__OR__ID_VM>
```
<br>

### VM states

Power ON a VM:
```bash
virsh start <VM_name>
```

Power OFF a VM:
```bash
virsh shutdown <VM_name>
```

Force power OFF a VM:
```bash
virsh destroy <VM_name>
```
<br>

Delete a VM:
```bash
virsh undefine <VM_name>
```
* If the VM is not running: delete
* If the VM is running: nothing happen, but when VM will be shutdown, it will be delete in the same time.
<br>
** You have to delete manually the disk. **
<br>


### Create an easy VM

Create a disk (defaut format: .raw):
```bash
qemu-img create <disk_name>.raw <size>
#Choose format, for example qcow2
qemu-img create -f qcow2 disk_qcow2.qcow2 10G
```

Create your first VM:
```bash
virt-install \
--virt-type kvm \
--name <VM_name> \
--vcpus 1 \
--memory 512 \
--disk <path_to_disk_name> \
--cdrom <path_to_ISO_file>
```
