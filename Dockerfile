FROM alpine:3.5

RUN apk add iptables --no-cache

COPY . .

EXPOSE 500/udp 4500/udp 443/udp

CMD ["/entry.sh"]
