FROM ruby:alpine

ADD . /Rails-Docker
WORKDIR /Rails-Docker
RUN gem install bundler
RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
