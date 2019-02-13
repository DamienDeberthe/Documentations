#!/bin/bash
#
# @Version: Proxmox 5.3
#
# DON'T FORGET TO ADD VALUES VARIABLES
#


# Variables
ID_TEMPLATE=
NAME_TEMPLATE=
NAME_STOCKAGE=
PATH_IMG=

# Create VM

if qm create ${ID_TEMPLATE} \
--name $NAME_TEMPLATE \
--sockets 1 \
--memory 2048 \
--net0 virtio,bridge=vmbr0 ; then
    echo "+ qm create ${ID_TEMPLATE} \
--name Template- \
--sockets 1 \
--memory 2048 \
--net0 virtio,bridge=vmbr0"
else
    echo "PB"
	exit 0
fi

# Import IMG to VM disk
echo -e "\n+ qm importdisk ${ID_TEMPLATE} $PATH_IMG $NAME_STOCKAGE"
qm importdisk ${ID_TEMPLATE} $PATH_IMG $NAME_STOCKAGE

# Associate VM disk to IMG
echo -e "\n+ qm set ${ID_TEMPLATE} --scsihw virtio-scsi-pci --scsi0 $NAME_STOCKAGE:${ID_TEMPLATE}/vm-${ID_TEMPLATE}-disk-0.raw"
qm set ${ID_TEMPLATE} --scsihw virtio-scsi-pci --scsi0 $NAME_STOCKAGE:${ID_TEMPLATE}/vm-${ID_TEMPLATE}-disk-0.raw


# Add cloudinit disk
echo -e "\n+ qm set ${ID_TEMPLATE} --ide2 $NAME_STOCKAGE:cloudinit"
qm set ${ID_TEMPLATE} --ide2 $NAME_STOCKAGE:cloudinit

# Disk boot
echo -e "\n+ qm set ${ID_TEMPLATE} --boot c --bootdisk scsi0"
qm set ${ID_TEMPLATE} --boot c --bootdisk scsi0

# VGA connect to serial
echo -e "\n+ qm set ${ID_TEMPLATE} --serial0 socket --vga serial0"
qm set ${ID_TEMPLATE} --serial0 socket --vga serial0

# Create template
echo -e "\n+ qm template ${ID_TEMPLATE}"
qm template ${ID_TEMPLATE}
