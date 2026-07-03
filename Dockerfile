FROM alpine:3.23.5

#install bash, shellcheck, git, and jq
RUN apk add --no-cache \
    bash \
    shellcheck \
    git \
    jq

# make sure the path can find all the binaries installed by apk
ENV PATH="/usr/bin:${PATH}"
# drop into bash shell
CMD ["/bin/bash"]


