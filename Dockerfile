FROM ruby:latest

WORKDIR /app

RUN apt-get update && apt-get install -y nodejs

COPY . .

RUN bundle install

RUN wget -O /usr/local/bin/wait-for-it.sh \
    https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && \
    chmod +x /usr/local/bin/wait-for-it.sh

EXPOSE 3000

ENTRYPOINT ["./entrypoint.sh"]

CMD ["rails", "server", "-b", "0.0.0.0"]
