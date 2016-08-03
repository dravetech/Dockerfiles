FROM resin/armv7hf-debian
MAINTAINER dbarroso

LABEL go.version=1.6.3

ENV GOROOT="/opt/go"\
    GOBIN="/usr/local/bin/"

WORKDIR /opt/
RUN apt-get update
RUN apt-get install -y dnsutils ez-ipupdate

ADD dynamic_ip_with_ez-ipupdate.sh /opt/dynamic_ip_with_ez-ipupdate.sh
ENTRYPOINT ["/bin/sh", "/opt/dynamic_ip_with_ez-ipupdate.sh"]
