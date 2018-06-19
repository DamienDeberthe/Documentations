Commandes Windows

Ajouter une route temporaire :
Ouvrir un CMD en étant Administrateur
```bash
route add <network> mask 255.255.255.0 <gateway>
```

Ajouter une route persistante :
```bash
route add <network> mask 255.255.255.0 <gateway> -p
```
