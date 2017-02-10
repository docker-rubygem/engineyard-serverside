FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.7.8pre2

RUN gem install engineyard-serverside --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["engineyard-serverside"]
CMD ["--help"]
