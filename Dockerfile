FROM honeycombio/samproxy:0.8.0@sha256:ff3ee4e87857522b23ba1165bf360cc4004e81fc757241af986753e7be653dad

FROM ubuntu:focal@sha256:6f2fb2f9fb5582f8b587837afd6ea8f37d8d1d9e41168c90f410a6ef15fa8ce5
COPY --from=samproxy /usr/bin/samproxy /usr/bin/samproxy
