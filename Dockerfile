FROM alpine:latest
RUN apk update && \
    apk --no-cache add ansible openssh-client python2
WORKDIR /ansible
