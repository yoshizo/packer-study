FROM ubuntu:14.04

# Ansible container
ENV HOSTNAME ansible
ENV ANSIBLE_VERSION 2.1.1.0-1
WORKDIR /tmp
RUN \
  apt-get update && \
  apt-get install -y curl unzip software-properties-common && \
  apt-add-repository -y ppa:ansible/ansible && \
  apt-get update && \
  apt-get install -y ansible=${ANSIBLE_VERSION}ppa~trusty && \
  rm -rf /var/lib/apt/lists/*

CMD ["bash"]
