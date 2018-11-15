## Commandes Mininet

### Affichage
Afficher la configuration réseau d'un host :
```bash
<host> ifconfig
```
Plus généralement pour exécuter des commandes sur les hosts :
```bash
<host> <command>
```
Ouvrir un terminal pour l'host :
```bash
<host> bash
```


### Test
Effectuer un ping depuis un host h1 vers un host h2 :
```bash
h1 ping h2
```
Effectuer un ping sur tous les hosts :
```bash
pingall
```
Traceroute :
```bash
<host> mtr <host> -n --report -c 2
```

### Configurations
Crée n hosts connecté au même switch :
```bash
sudo mn --topo single,<host_number>
```
Crée n hosts avec chacun leur switch interconnecté les uns aux autres :
```bash
sudo mn --topo linear,<host_number>
```