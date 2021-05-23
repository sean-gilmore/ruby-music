FROM ruby:3.0.1

RUN bundle config --global frozen 1

WORKDIR /ruby

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["ruby", "./song.rb"]
