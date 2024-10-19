# click-odoo-contrib Docker

click-odoo-contrib is a useful Python CLI library that can
greatly enhance the system administration of an Odoo deployment,
e.g. backup, restore, etc.

Having a Docker image helps in running the instance as a
Docker container, Kubernetes CronJob, etc.

If the day comes that the upstream repository provides an
official Docker image, this repo will cease to exist. Until
then, we'll provide an up-to-date support for whatever new
version they release.

To use this image, reference it in the following format:

```shell
version=$(
  curl -s https://api.github.com/repos/meysam81/click-odoo-contrib-docker/releases/latest |
  jq -r .tag_name
)
docker pull ghcr.io/meysam81/click-odoo-contrib:${version}
```
