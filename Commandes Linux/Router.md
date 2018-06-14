### Routage
Pour activer le routage, éditer le fichier <code>/etc/sysctl.conf</code> et décommenter/ajouter la ligne :
```bash
net.ipv4.ip_forward=1
```

### Activer le NAT
* Règle IPTABLE, avec eth0 = interface réseau WAN :

```bash
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
```

Visualiser la nouvelle règle :
```bash
iptables -L -t nat
```

* Persistance des règles :<br>

Installer le paquet <code>iptables-persistent</code> :
```bash
apt-get install -y iptables-persistent
```
Sauvegarder les règles :
```bash
iptables-save > /etc/iptables/rules.v4
```

Les règles se trouvent dans le fichier : <code>/etc/iptables/rules.v4</code>
