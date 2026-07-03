# Docker with bash jq and shellcheck for pipelines

Building the image:

```shell
docker build --no-cache -t bash-jq-shellcheck .
```

Test

```shell
docker run --rm bash-jq-shellcheck bash --version
docker run --rm bash-jq-shellcheck jq --version
docker run --rm bash-jq-shellcheck shellcheck --version
```

