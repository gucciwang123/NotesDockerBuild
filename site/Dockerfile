FROM ruby

RUN gem install jekyll bundler

WORKDIR /app

RUN touch Gemfile.lock
RUN chmod a+w Gemfile.lock

ADD build.sh /app

VOLUME /out

ENTRYPOINT ./build.sh
