# Cookiecutter Docker Image

This repository contains a Dockerfile to create a Docker image with Cookiecutter version 2.3.0. It allows you to utilize
Cookiecutter's template generation features inside a Docker container, providing a consistent and isolated environment.

## Prerequisites

- Docker (Install from [here](https://docs.docker.com/get-docker/))

## How to Build the Image

1. Clone this repository:
   ```bash
   git clone https://github.com/ziuloliveira/cookiecutter.git
   cd cookiecutter
   ```
2. Build image:
   ```bash
   docker build -t cookiecutter:latest .
   ```

## How to Run the Image

You can use the Docker image to create a project from a Cookiecutter template by running the following command:

```bash
docker run -it --rm cookiecutter <gh:username/repo> [OPTIONS]
```

Replace username/repo with the actual GitHub username and repository name for the template you want to use.

### Mounting Volumes (Optional)

If you need to access files from your host machine inside the container, you can mount a volume by adding the -v option:

```bash
docker run -it --rm -v /path/on/host:/path/in/container cookiecutter:2.3.0 gh:username/repo
```

### Complete example

This example demonstrates how to create a project from the cookiecutter-pypackage using the default variable values, and
outputs the project in the ./workspace directory mounted in the container:

```bash
mkir -p workspace
docker run -it --rm \
    -v ./workspace:/workspace \
    cookiecutter:2.3.0 \
    https://github.com/audreyfeldroy/cookiecutter-pypackage.git \
    -o /workspace \
    --no-input
```

### Published Docker Hub Image

There as image already available on `ziuloliveira/cookiecutter`

```shell
docker pull ziuloliveira/cookiecutter:2.5.0
```
