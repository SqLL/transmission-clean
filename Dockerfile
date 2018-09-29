FROM centos:7

MAINTAINER sqll
RUN yum install -y epel-release
RUN yum -y update
RUN yum install -y transmission-common

COPY script/transmission-cleanup.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod u+x /usr/local/bin/docker-entrypoint.sh \
    && ln -s /usr/local/bin/docker-entrypoint.sh /

ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD []