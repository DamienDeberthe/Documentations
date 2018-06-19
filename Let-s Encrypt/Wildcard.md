Source : https://blog.blaisot.org/letsencrypt-wildcard-part1.html

## Installation de certbot
<code>
mkdir /opt/certbot && cd /opt/certbot
wget https://dl.eff.org/certbot-auto
chmod a+x certbot-auto && ./certbot-auto --install-only
</code>

Verification de l'installation :
<code>
/opt/eff.org/certbot/venv/bin/certbot --version
</code>

## Génération du Wildcard

cd /opt/eff.org/certbot/venv/bin/
./certbot certonly --server https://acme-v02.api.letsencrypt.org/directory --manual -d '*.domain.com'
