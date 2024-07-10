cd src

export JEKYLL_ENV="production"

mv /out/* .
bundle install

bundle exec jekyll build -d /out
