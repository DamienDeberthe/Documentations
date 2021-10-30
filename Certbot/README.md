## CERTBOT

### Install

```bash
apt-get install -y certbot
```


### Create certifcat

Configure VHOST before:

```bash
certbot certonly --nginx -d <your_domain>
```

### Renew

```bash
certbot renew
```
