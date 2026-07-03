FROM bash:5.2-alpine3.22

COPY --from=ghcr.io/jqlang/jq:1.7.1 /jq /usr/local/bin/jq
COPY --from=koalaman/shellcheck-alpine:stable /bin/shellcheck /usr/local/bin/shellcheck

CMD ["bash"]
