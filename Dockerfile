FROM ruby:latest

WORKDIR /app

RUN apt-get update && apt-get install -y nodejs

COPY . .

RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
