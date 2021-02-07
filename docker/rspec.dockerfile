FROM ruby:2.6.6

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY ./Gemfile .
COPY ./Gemfile.lock .
RUN bundle install