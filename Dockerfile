FROM ruby:2.3.8-slim-stretch

WORKDIR /code

ENV RACK_ENV=development
ENV RAILS_ENV=development

RUN apt-get update

RUN apt-get install -y libpq-dev build-essential nodejs xvfb chromedriver chromium

COPY Gemfile Gemfile.lock /code/

RUN gem install bundler

RUN bundle install --path=vendor

COPY . /code/

RUN mv xvfb-chromium /usr/bin/xvfb-chromium
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser

CMD "/bin/bash"

# use by running `docker-compose run app bundle exec rspec`
