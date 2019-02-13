#!/bin/bash
#
# @Version: Proxmox 5.3
#
# DON'T FORGET TO ADD VALUES VARIABLES
#

# Variables
ID_TEMPLATE=
ID_VM=
NAME_VM=
IP_VM=192.168.0.1/24
GW_VM=192.168.0.254
SIZE_DISK=100G
PATH_PUBLICKEY=~/.ssh/id_rsa.pub


# Create VM
echo -e "\n+ qm clone $ID_TEMPLATE $ID_VM --name $NAME_VM"
qm clone $ID_TEMPLATE $ID_VM --name $NAME_VM

# Resize disk
echo -e "\n+ qm resize $ID_VM scsi0 $SIZE_DISK"
qm resize $ID_VM scsi0 $SIZE_DISK

# Path to publick key
echo -e "\n+ qm set $ID_VM --sshkey $PATH_PUBLICKEY"
qm set $ID_VM --sshkey $PATH_PUBLICKEY

# Network informations: IP and GW
echo -e "\n+ qm set $ID_VM --ipconfig0 ip=$IP_VM,gw=$GW_VM"
qm set $ID_VM --ipconfig0 ip=$IP_VM,gw=$GW_VM

# Start new VM
echo -e "\n+ qm start $ID_VM"
qm start $ID_VM

# Information text
echo -e "\n\n+ Connect to your VM with: ssh <user>@$IP_VM"
