FROM alpine:3.6

ENV PAGER='busybox less'

RUN apk add --no-cache \
      groff \
      python \
      py-pip \
  && pip install awscli \
  && apk --purge del -v py-pip

ENTRYPOINT ["aws"]

