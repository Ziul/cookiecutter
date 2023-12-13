FROM python:3.10-buster

ARG VERSION=2.5.0

# Install a specific version of Cookiecutter
RUN pip install cookiecutter==${VERSION}

# Set up the entrypoint to use Cookiecutter
ENTRYPOINT ["cookiecutter"]