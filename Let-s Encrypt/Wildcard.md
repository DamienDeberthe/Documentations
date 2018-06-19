Source : https://blog.blaisot.org/letsencrypt-wildcard-part1.html

## Installation de certbot
```bash
mkdir /opt/certbot && cd /opt/certbot
wget https://dl.eff.org/certbot-auto
chmod a+x certbot-auto && ./certbot-auto --install-only
```

Verification de l'installation :
```bash
/opt/eff.org/certbot/venv/bin/certbot --version
```

## Génération du Wildcard

```bash
cd /opt/eff.org/certbot/venv/bin/
./certbot certonly --server https://acme-v02.api.letsencrypt.org/directory --manual -d '*.domain.com' --manual-public-ip-logging-ok
```

A cette étape :
```bash
-------------------------------------------------------------------------------
Please deploy a DNS TXT record under the name
_acme-challenge.domain.tld with the following value:
```
Il faut ajouter l'enregistrement TXT au domaine.

Les certificats se trouvent dans le dossier :<br>
<i>/etc/letsencrypt/live/domain.com/fullchain.pem<br>
/etc/letsencrypt/live/domain.com/privkey.pem</i>
