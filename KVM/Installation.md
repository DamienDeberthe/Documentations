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
