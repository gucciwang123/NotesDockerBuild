FROM ruby

RUN gem install jekyll bundler

WORKDIR /app

RUN touch src/Gemfile.lock
RUN chmod a+w src/Gemfile.lock

ADD build.sh /app

VOLUME /out

ENTRYPOINT ./build.sh
