FROM alpine:latest

RUN apk --no-cache add dnsmasq

COPY etc-hosts .

ENTRYPOINT ["dnsmasq" "-k" "-R" "--hostsdir=/" "--local-ttl=5"]
