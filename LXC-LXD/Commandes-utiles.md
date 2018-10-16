## Commande utiles

### Affichages
Lister tous les conteneurs (running et stopped) :
```bash
lxc list
```

Lister les images :
```bash
lxc image list ubuntu:
lxc image list images:
```
<br>


### Gestion de conteneurs
Lancer un nouveau conteneur à l'état STOPPED, et le lancer :
```bash
lxc init <container_img> <container_name>
lxc start <container_name>
```
Lancer un nouveau conteneur et l'allumer :
```bash
lxc launch <container_img> <container_name>
lxc launch ubuntu:16.04 c1
```
container :
* ubuntu: (for stable Ubuntu images)
* images: (for a bunch of other distros)
* ubuntu-daily: (for daily Ubuntu images)
<br>

Lancer un conteneur et l'allumer :
```bash
lxc start <container_name>
```
Stopper un conteneur : 
```bash
lxc stop <container_name>
```
Détruire un conteneur :
```bash
lxc delete <container_name>
```
Renommer un conteneur (le conteneur doit être éteind) :
```bash
lxc rename <current_container_name> <new_container_name>
```
<br>


### Bonus
#### Commandes rapides
Lancer tous les conteneurs :
```bash
lxc start `lxc list | grep STOPPED | awk '{print $2}'| xargs`
```
Stopper tous les conteneurs :
```bash
lxc stop `lxc list | grep RUNNING | awk '{print $2}'| xargs`
```
Détruire tous les conteneurs :
```bash
lxc delete `lxc list | grep STOPPED | awk '{print $2}'| xargs`
```
En une commande :
```bash
lxc stop `lxc list | grep RUNNING | awk '{print $2}'| xargs` ; lxc delete `lxc list | grep STOPPED | awk '{print $2}'| xargs`
```
<br>


### Options supplémentaires
#### Copie de fichiers
Copier un fichier de la machine hote vers le conteneur :
```bash
lxc file push <file_on_host> <container_name>/<dir>/<file>
```
Copier un fichier du conteneur vers la machine hote :
```bash
lxc file pull <container_name>/<dir>/<file> <destination_on_host>
```
<br>

#### Réseaux
Pour ajouter/modifier une carte réseau d'un conteneur afin de la faire pointer vers une autre interface hôte :
```bash
lxc config device add <container_name> <container_interface_name> nic name=<container_interface_name> nictype=bridged parent=<interface_host_name>
```
<br>

#### Ports
Activer et rediriger un port host vers le conteneur :
```bash
iptables -t nat -A PREROUTING -p tcp -i <host_interface> --dport <host_port> -j DNAT --to-destination <container_IP>:<container_port>
```
Supprimer une redirection de port (même ligne que precedemment, remplacer -A par -D) :
```bash
iptables -t nat -D PREROUTING -p tcp -i <host_interface> --dport <host_port> -j DNAT --to-destination <container_IP>:<container_port>
```
<br>

#### Stockage
Les fichiers/dossiers des conteneurs sont situés dans le dossier :
```bash
/var/lib/lxd/containers/<container_name>/rootfs/
```
<br>


### Utilisation du conteneur
Pour ouvrir un bash du conteneur :
```bash
lxc exec <container_name> -- bash
```
Pour lancer uniquement une commande dans un conteneur :
```bash
lxc exec <container_name> -- <command>
```
