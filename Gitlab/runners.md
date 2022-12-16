# Runners

## Docker runner

Install docker.
<br/><br/>
Create directory for save configurations:

```bash
mkdir -p /srv/gitlab-runner/config/certs
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
 --tag-list "" \
 --run-untagged="true" \
 --locked="false" \
 --access-level="not_protected"
```
Source: https://docs.gitlab.com/runner/register/

<br/>

If you modify configurations or need to restart:
```bash
docker restart gitlab-runner
```
