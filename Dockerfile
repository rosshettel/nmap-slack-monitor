FROM gliderlabs/alpine:3.3
MAINTAINER Ross Hettel <ross@het.tel>

RUN apk-install \
    bash \
    python \
    nmap \
    curl

COPY ./bin /usr/local/bin/

WORKDIR /nmap
RUN mkdir scans

#CMD scan-network
CMD ash
