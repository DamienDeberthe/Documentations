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
<p>A cette étape :</p>
<br/>
<code>
-------------------------------------------------------------------------------<br/>
Please deploy a DNS TXT record under the name<br/>
_acme-challenge.domain.tld with the following value:<br/>
</code>
<br/>
Il faut ajouter l'enregistrement TXT à votre domaine.
