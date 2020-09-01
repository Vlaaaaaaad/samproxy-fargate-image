FROM honeycombio/samproxy:0.9.0@sha256:dcf4522942635ea4befcfb5940cd218f5f8dddfafdfeb7a9adeff29f84b41875 AS samproxy

FROM ubuntu:focal@sha256:6f2fb2f9fb5582f8b587837afd6ea8f37d8d1d9e41168c90f410a6ef15fa8ce5
COPY --from=samproxy /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=samproxy /usr/bin/samproxy /usr/bin/samproxy
