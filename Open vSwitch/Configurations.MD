##CONFIG

### Affichage
Afficher la configuration complète :
```bash
ovs-vsctl show
```
Afficher seulement les interfaces virtuelles :
```bash
ovs-vsctl list-br
```


### Configuration interface virtuelle (bridge)
Création d'une interface virtuelle :
```bash
ovs-vsctl add-br <interface_name>
```
Suppression d'une interface virtuelle :
```bash
ovs-vsctl del-br <interface_name>
```

### Configuration bond
