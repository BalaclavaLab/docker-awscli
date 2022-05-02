FROM alpine:3.15

ENV PAGER='busybox less'

RUN apk add --no-cache \
      groff \
      python3 \
      py3-pip \
  && pip3 install six awscli \
  && apk --purge del -v py3-pip

ENTRYPOINT ["aws"]

