## Repository

### APT



### YUM

Add new repo:
```bash
yum-config-manager --add-repo <https://new_repo.com>
```

Simple list all repo:
```bash
yum repolist
yum repolist all (enabled / disabled)
```

See all repo informations:
```bash
ls /etc/yum.repos.d
```

Delete repo:
```bash
rm /etc/yum.repos.d/<new_repo>.repo
```
