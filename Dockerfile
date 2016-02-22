FROM alpine:3.3

RUN apk add --update \
      python \
      py-pip \
  && pip install awscli \
  && apk --purge del -v py-pip \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["aws"]

