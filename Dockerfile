FROM ruby:2.5-alpine

ENV APP_PATH /opt/app

RUN mkdir -p $APP_PATH

ADD . $APP_PATH/

WORKDIR $APP_PATH

RUN bundle install

CMD ["rackup", "-p", "4567"]

