FROM alpine:3.15

ENV PAGER='busybox less'

RUN apk add --no-cache aws-cli

ENTRYPOINT ["aws"]

