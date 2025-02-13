# docker build -t "bind9-alpine" .
FROM alpine:3.21.2
RUN apk update && apk add bind openrc
COPY ./Config/Bind/named.conf /etc/bind/named.conf

# Start openrc softlevel and add named into default runlevel
RUN mkdir /run/openrc && touch /run/openrc/softlevel
RUN rc-update add named default

EXPOSE 53/udp 8888
ENTRYPOINT ["/sbin/init"]