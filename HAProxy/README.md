## HAProxy

### Installation
```bash
apt-get install haproxy
```

<br/>

# Configuration
File in <code>/etc/haproxy/haproxy.cfg</code>:

```bash
global
    log         127.0.0.1 local2

    chroot      /var/lib/haproxy
    pidfile     /var/run/haproxy.pid
    maxconn     4000
    user        haproxy
    group       haproxy
    daemon

    # turn on stats unix socket
    stats socket /var/lib/haproxy/stats


defaults
    mode                    http
    log                     global
    option                  httplog
    option                  dontlognull
    option http-server-close
    option forwardfor       except 127.0.0.0/8
    option                  redispatch
    retries                 3
    timeout http-request    10s
    timeout queue           1m
    timeout connect         10s
    timeout client          1m
    timeout server          1m
    timeout http-keep-alive 10s
    timeout check           10s
    maxconn                 3000


# FRONTEND
#----------------------------------------------#
# PORTS
frontend frontend_test_8080
    bind          *:8080
    mode          http
    use_backend   backend_test
frontend frontend_test_8081
    bind          *:8081
    mode          http
    use_backend   backend_test

# FQDN
frontend frontend_test_9090
    bind          *:9090
    acl host1 hdr(host) -i host1.domain.local
    acl host2 hdr(host) -i host2.domain.local
    use_backend backend_test if host1
    use_backend backend_test if host2
#----------------------------------------------#


#BACKEND
#----------------------------------------------#
backend backend_test
    mode http
    server server_name 127.0.0.1:80
#----------------------------------------------#

```

<br/>

### Service
To test config file:
```bash
haproxy -c -f /etc/haproxy/haproxy.cfg
```

To restart service:
```bash
service haproxy restart
```
