# Runners

## Docker runner

### Prerequisite
Install docker.

### Install and configure
Create directory for save configurations:

```bash
mkdir -p /srv/gitlab-runner/config
```

Run gitlab-runner container:
```bash
docker run -d --name gitlab-runner --restart always \
  -v /srv/gitlab-runner/config:/etc/gitlab-runner \
  -v /var/run/docker.sock:/var/run/docker.sock \
  gitlab/gitlab-runner:latest
```
Source: https://docs.gitlab.com/runner/install/docker.html

Register gitlab-runner:
```bash
docker run --rm -v /srv/gitlab-runner/config:/etc/gitlab-runner gitlab/gitlab-runner register \
 --non-interactive \
 --executor "docker" \
 --docker-image alpine:latest \
 --url "https://gitlab.com/" \
 --registration-token "<GITLAB_RUNNER_TOKEN>" \
 --description "<GITLAB_RUNNER_NAME>" \
 --maintenance-note "" \
 --docker-privileged \ 
 --tag-list "" \
 --run-untagged="true" \
 --locked="false" \
 --access-level="not_protected"
```
Source: https://docs.gitlab.com/runner/register/

### Restart config
If you modify configurations or need to restart:
```bash
docker restart gitlab-runner
```

### Execute simultaneous jobs
In file <code>/srv/gitlab-runner/config/config.toml</code> update <code>concurrent</code> like that:
```bash
concurrent = 3
```
Don't forget to restart config.
