FROM alpine:3.23.5

#install bash, shellcheck, git, and jq, ca certificates for https, and openssl for git and curl
RUN apk add --no-cache \
    bash \
    shellcheck \
    git \
    jq \
    ca-certificates \
    openssl \
    curl \
    && update-ca-certificates

# make sure the path can find all the binaries installed by apk
ENV PATH="/usr/bin:${PATH}"
# drop into bash shell
CMD ["/bin/bash"]


