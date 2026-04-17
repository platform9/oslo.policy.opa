ARG BASE_IMAGE

FROM ${BASE_IMAGE}

USER root

# The pf9-* images use a virtualenv at /var/lib/openstack
ENV PIP=/var/lib/openstack/bin/pip3
ENV PYTHON=/var/lib/openstack/bin/python3

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
  && rm -rf /var/lib/apt/lists/*

RUN ${PIP} install --upgrade pip

WORKDIR /work
COPY . /work
RUN ${PIP} install -e /work

ENTRYPOINT ["/var/lib/openstack/bin/oslopolicy-opa-policy-generator"]
