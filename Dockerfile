FROM ruby:3.0.4
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /menu_api
COPY Gemfile /menu_api/Gemfile
COPY Gemfile.lock /menu_api/Gemfile.lock
RUN bundle install

EXPOSE 3001

CMD ["rails", "server", "-b", "0.0.0.0"]