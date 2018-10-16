## COMMANDES UTILES

### Affichage
Afficher la configuration complète :
```bash
ovs-vsctl show
```
Afficher seulement les bridges :
```bash
ovs-vsctl list-br
```
Afficher les interfaces relié à un bridge :
```bash
ovs-vsctl list-ports <bridge_name>
```
<br>

### Configuration bridge
Création d'un bridge :
```bash
ovs-vsctl add-br <bridge_name>
```
Suppression d'un bridge :
```bash
ovs-vsctl del-br <bridge_name>
```
<br>

Ajout d'une interface à un bridge + VLAN :
```bash
ovs-vsctl add-port <bridge_name> <interface_name>
ovs-vsctl add-port <bridge_name> <interface_name> tag=<vlan_number>
```
Suppression d'une interface d'un bridge :
```bash
ovs-vsctl del-port <bridge_name> <interface_name>
```

### Configuration bond

### Bonus
Supprimer tous les bridges :
```bash
for i in $(ovs-vsctl list-br); do ovs-vsctl del-br $i; done
```
