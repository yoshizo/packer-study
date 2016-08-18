FROM ubuntu:14.04

# Ansible container
ENV ANSIBLE_VERSION 2.1.1.0-1

ADD ./files/ansible.sh /tmp/ansible.sh
RUN \
  bash /tmp/ansible.sh && \
  rm -rf /var/lib/apt/lists/* /tmp/ansible.sh

CMD ["bash"]
