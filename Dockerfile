FROM alpine:3.4
MAINTAINER Benedikt Lang <mail@blang.io>
RUN apk --no-cache add bash go bzr git mercurial subversion openssh-client ca-certificates

RUN mkdir -p /go/src /go/bin && chmod -R 777 /go
ENV GOPATH /go
ENV PATH /go/bin:$PATH
WORKDIR /go
