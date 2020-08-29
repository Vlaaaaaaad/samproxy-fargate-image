FROM honeycombio/samproxy:0.8.0@sha256:ff3ee4e87857522b23ba1165bf360cc4004e81fc757241af986753e7be653dad

FROM ubuntu:focal@sha256:a7cef255ab7e2d9a3ef5987b93cd46d65b6e827e3ddd78e82948ceb3cb1c2487
COPY --from=samproxy /usr/bin/samproxy /usr/bin/samproxy
