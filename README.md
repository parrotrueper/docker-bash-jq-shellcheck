# docker-bash-jq-shellcheck

Minimal Docker image with:

- `bash`
- `jq`
- `shellcheck`

## Build

```sh
docker build -t docker-bash-jq-shellcheck .
```

## Usage

Start an interactive shell:

```sh
docker run --rm -it docker-bash-jq-shellcheck
```

Smoke-test the installed tools:

```sh
docker run --rm docker-bash-jq-shellcheck bash --version
docker run --rm docker-bash-jq-shellcheck jq --version
docker run --rm docker-bash-jq-shellcheck shellcheck --version
```