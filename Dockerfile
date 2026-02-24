FROM python:3.11-slim

ARG OS_RELEASE=2025.2
ENV CONSTRAINTS_URL=https://releases.openstack.org/constraints/upper/${OS_RELEASE}

# Add build tools (gcc, etc.)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
  && rm -rf /var/lib/apt/lists/*

RUN python -m pip install --upgrade pip
RUN python -m pip install -c ${CONSTRAINTS_URL} \
    keystone neutron cinder nova

WORKDIR /work
