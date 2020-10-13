FROM ruby:2.7

WORKDIR /app

RUN apt -y update && apt -y upgrade
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

COPY Gemfile Gemfile.lock /app/

RUN gem install bundler:1.17.3

RUN bundle install

ADD . /app/
