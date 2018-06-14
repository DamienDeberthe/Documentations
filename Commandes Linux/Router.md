### Routage
Pour activer le routage, éditer le fichier <code>/etc/sysctl.conf</code> et décommenter/ajouter la ligne :
```bash
net.ipv4.ip_forward=1
```

### Activer le NAT
* Règle IPTABLE :
```bash
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
```

* Persistance des règles :
Installer le paquet <code>iptables-persistent</code> :
```bash
apt-get install -y iptables-persistent
```

Les règles se trouvent dans le fichier : <code>/etc/iptables/rules.v4</code>
