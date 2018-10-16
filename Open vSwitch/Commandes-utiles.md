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
ovs-vsctl add-br <interface_name>
```
Suppression d'un bridge :
```bash
ovs-vsctl del-br <interface_name>
```

### Configuration bond
