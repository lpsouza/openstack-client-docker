# Docker Openstack CLI

This is a implementation of Openstack CLI commands in a container.

## Versions supported

- [Queens (12.0.0)](https://docs.openstack.org/python-openstackclient/queens/)

## Usage

Create a openrc file with this config:

```bash
export OS_PROJECT_DOMAIN_NAME=Default
export OS_USER_DOMAIN_NAME=Default
export OS_PROJECT_NAME=admin
export OS_USERNAME=admin
export OS_PASSWORD=YoUrPaSsWoRd
export OS_AUTH_URL=http://your-keystone-endpoint
export OS_IDENTITY_API_VERSION=3
export OS_IMAGE_API_VERSION=2
```

After that, just execute this docker container:

`docker run --rm -ti -v $PWD/your-openrc-file:/openstack/openrc lpsouza/openstack-cli your openstack command`

Example:

`docker run --rm -ti -v $PWD/admin-openrc:/openstack/openrc lpsouza/openstack-cli server list`
