FROM alpine

MAINTAINER Camil Blanaru <camil@edka.io>

RUN apk add --update \
    python \
    py-pip \
    py-cffi \
    py-cryptography \
  && pip install --upgrade pip \
  && rm -rf /var/cache/apk/*

#install gsutil
RUN pip install gsutil

CMD ["gsutil"]
