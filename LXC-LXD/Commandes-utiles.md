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

### Gestion de conteneurs
<br>

Lancer un conteneur :
```bash
lxc launch <container> <name>
```
container :
* ubuntu: (for stable Ubuntu images)
* images: (for a bunch of other distros)
* ubuntu-daily: (for daily Ubuntu images)

Stopper un conteneur : 
```bash
lxc stop <name>
```
Détruire un conteneur :
```bash
lxc delete <name>
```

### Options supplémentaires
<br>

### Utilisation du conteneur
<br>

Pour ouvrir un bash du conteneur :
```bash
lxc exec <name> -- /bin/bash
```
Pour lancer uniquement une commande dans un conteneur :
```bash
lxc exec <name> -- <command>
```
