# Based on https://github.com/influxdata/influxdata-docker

FROM resin/armv7hf-debian
MAINTAINER dbarrosop

ENV INFLUXDB_VERSION 0.13.0

RUN gpg \
    --keyserver hkp://ha.pool.sks-keyservers.net \
    --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 && \
     apt-get update && \
    apt-get -y --no-install-recommends install libfontconfig curl ca-certificates && \
    apt-get clean && \
    curl https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_armhf.deb.asc > influxdb.deb.asc && \
    curl https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_armhf.deb > influxdb.deb && \
    gpg --batch --verify influxdb.deb.asc influxdb.deb && \
    dpkg -i influxdb.deb && \
    rm -f influxdb.deb* && \
    apt-get remove -y curl && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

COPY influxdb.conf /etc/influxdb/influxdb.conf

EXPOSE 8083 8086

VOLUME /var/lib/influxdb

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["influxd"]
