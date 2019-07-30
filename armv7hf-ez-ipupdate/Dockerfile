FROM balenalib/armv7hf-alpine
MAINTAINER dbarrosop

RUN apk add --no-cache ez-ipupdate bind-tools

ADD dynamic_ip_with_ez-ipupdate.sh /opt/dynamic_ip_with_ez-ipupdate.sh

ENTRYPOINT ["/bin/sh", "/opt/dynamic_ip_with_ez-ipupdate.sh"]
