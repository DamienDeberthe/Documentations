## Installation

```bash
apt-get install -y isc-dhcp-relay
```

## Configuration

* Fichier de configuration : <code>/etc/default/isc-dhcp-relay</code>

```bash
# What servers should the DHCP relay forward requests to?
SERVERS="dhcp.domain.com"

# On what interfaces should the DHCP relay (dhrelay) serve DHCP requests?
INTERFACES="eth0"

# Additional options that are passed to the DHCP relay daemon?
OPTIONS=""
```

* Restart du service
```bash
service isc-dhcp-relay restart
```
