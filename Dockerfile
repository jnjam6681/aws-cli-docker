FROM python:3.8.0-alpine

# version awscli
ARG CLI_VERSION=1.16.273

# install python3
RUN apk add --update --no-cache \
      groff \
      less

# install awscli
RUN pip3 --no-cache-dir install --upgrade awscli==$CLI_VERSION

# clean up
RUN rm -rf /var/cache/apk/*
