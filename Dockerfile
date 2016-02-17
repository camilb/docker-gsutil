FROM alpine

MAINTAINER Camil Blanaru <camil@edka.io>

RUN apk add --update \
    python \
    py-pip \
    py-cffi \
    py-cryptography \
  && pip install --upgrade pip \
  && rm -rf /var/cache/apk/*

#temp fix for oauth2client update to 2.0
RUN  pip install 'oauth2client==1.5.2'

#install gsutil
RUN pip install gsutil

#add config

COPY boto /root/.boto

CMD ["gsutil"]
