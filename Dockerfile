FROM ruby:3.1.1
WORKDIR /railsApp
COPY Gemfile /railsApp/Gemfile
COPY Gemfile.lock /railsApp/Gemfile.lock
RUN bundle install

COPY entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0" ]
