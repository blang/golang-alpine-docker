# Alpine linux golang docker image - 204MB

Because alpine linux and therefor `gliderlabs/alpine` docker containers use musl instead gnu libc, your golang binaries build using libc will not work on alpine.

Use this docker container to build your golang project for alpine linux.

Image `golang`  | Image `blang/golang-alpine`
--------------- | -------------
~515 MB         | ~204 MB
GCC+Other weight| Bare

Also check out my [blog post](https://www.blang.io/2015/04/19/golang-alpine-build-golang-binaries-for-alpine-linux.html) about this topic.

## Usage
Like the base `golang` image

```bash
docker pull blang/golang-alpine
```

```bash
docker run --rm -v "$PWD":/go/src/github.com/yourname/yourrepo -w /go/src/github.com/yourname/yourrepo blang/golang-alpine go build -v

docker run --rm -v "$PWD":/go/bin blang/golang-alpine go get github.com/yourname/yourrepo
```