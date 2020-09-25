FROM honeycombio/samproxy:0.11.0@sha256:de77a0fefbb5ec4bbb1dd063713f563c00eb20767b9f2a4fbee0f60ba585320e AS samproxy

FROM ubuntu:focal@sha256:6f2fb2f9fb5582f8b587837afd6ea8f37d8d1d9e41168c90f410a6ef15fa8ce5
COPY --from=samproxy /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=samproxy /usr/bin/samproxy /usr/bin/samproxy
