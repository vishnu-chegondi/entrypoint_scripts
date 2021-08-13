# EntryPoint

The scripts in this repository are useful for running as entrypoint in custom dockerfile when we want multiple platforms in single docker image. 

## Docker

If we want to run docker inside any other platform. Installing docker can be achieved using the below set of commands in dockerfile.

```docker
# Installing docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh
```
But running docker daemon inside it requires entrypoint script which should run docker and additional CMDs

[docker-entrypoint.sh](./docker/docker-entrypoint.sh) can be used to as entrypoint script

### Usage

```docker
# Include docker-entrypoint script
RUN curl -fsSL https://raw.githubusercontent.com/vishnu-chegondi/entrypoint_scripts/master/docker/docker-entrypoint.sh -o /usr/local/bin/docker-entrypoint.sh
RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
```
