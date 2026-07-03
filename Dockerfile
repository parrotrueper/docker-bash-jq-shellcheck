FROM ghcr.io/jqlang/jq:1.7.1 AS jq

FROM koalaman/shellcheck-alpine:v0.11.0 AS shellcheck

FROM bash:5.2-alpine3.22

COPY --from=jq /jq /usr/local/bin/jq
COPY --from=shellcheck /bin/shellcheck /usr/local/bin/shellcheck

CMD ["bash"]
