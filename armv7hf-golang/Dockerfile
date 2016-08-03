FROM resin/armv7hf-debian
MAINTAINER dbarrosop

LABEL go.version=1.6.3

ENV GOROOT="/opt/go"\
    GOBIN="/usr/local/bin/"

WORKDIR /opt/
RUN apt-get update; apt-get install -y curl git;
RUN curl https://storage.googleapis.com/golang/go1.6.3.linux-armv6l.tar.gz | tar xvz;\
    ln -sf /opt/go/bin/go /usr/local/bin/;

ENTRYPOINT ["/bin/bash"]
