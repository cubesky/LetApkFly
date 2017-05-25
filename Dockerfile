FROM ubuntu

MAINTAINER cubesky
LABEL com.resilio.version="2.4.5"

ADD https://download-cdn.resilio.com/2.4.5/linux-x64/resilio-sync_x64.tar.gz /tmp/sync.tgz
RUN tar -xf /tmp/sync.tgz -C /usr/bin rslsync && rm -f /tmp/sync.tgz
COPY sync.conf /etc/
COPY sync.conf /mnt/sync/
COPY run_sync /usr/bin/

EXPOSE 55555

ENTRYPOINT ["/usr/bin/run_sync"]
CMD ["--config", "/mnt/sync/sync.conf"]