FROM honeycombio/samproxy:0.10.0@sha256:1f627f90e744de820685fd18f5be0ea06a3d150d293d1b1a31975debd35535c8 AS samproxy

FROM ubuntu:focal@sha256:6f2fb2f9fb5582f8b587837afd6ea8f37d8d1d9e41168c90f410a6ef15fa8ce5
COPY --from=samproxy /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=samproxy /usr/bin/samproxy /usr/bin/samproxy
