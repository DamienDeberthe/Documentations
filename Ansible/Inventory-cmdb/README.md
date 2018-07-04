## INVENTORY-CMDB

* Install pip and module for ansible :
```bash
apt-get install python-pip \
&& pip install ansible-cmdb
```
<br>

* Collect informations about your hosts (store in the dir <out>) :
```bash
ansible -i <file_ansible_host> -m setup --tree <dir_out_where_hosts_store> <group_of_host> --user <user_use_for_connexion>
```
Example :
```bash
ansible -i /etc/ansible/hosts -m setup --tree out/ all --user ansible
```
<br>

* Generate inventory
** Simple one-page :
```bash
ansible-cmdb -t html_fancy <dir_out_where_hosts_store> > simple-inventory.html
```
** Advanced page for big infrastructure (one page per server) :
```bash
ansible-cmdb -t html_fancy_split <dir_out_where_hosts_store> > advanced-inventory.html
```
