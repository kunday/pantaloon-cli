FROM ruby:2.1.5

RUN useradd -m app

WORKDIR /usr/local/app
ADD . /usr/local/app

RUN chown app:app /usr/local/app

RUN bundle install

USER app
