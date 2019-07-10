FROM alpine:latest

RUN apk --no-cache add dnsmasq

COPY etc-hosts .

ENTRYPOINT ["dnsmasq", "-k", "-h", "-R", "--hostsdir=/", "--log-facility=-", "--user=root"]
