## MEMO COMMANDES WINDOWS


### Network

Ajouter une route temporaire : (ouvrir un CMD en étant Administrateur)
```bash
route add <network> mask 255.255.255.0 <gateway>
```
Ajouter une route persistante : (ouvrir un CMD en étant Administrateur)
```bash
route add <network> mask 255.255.255.0 <gateway> -p
```
