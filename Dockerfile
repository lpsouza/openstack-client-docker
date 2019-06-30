FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /openstack

COPY entrypoint.sh .

RUN chmod 755 /openstack/entrypoint.sh && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install software-properties-common -y && \
    apt-get install python-openstackclient -y

ENTRYPOINT [ "/openstack/entrypoint.sh" ]
