cd src

export JEKYLL_ENV="production"

cp -r /out/Precalculus .
bundle install

bundle exec jekyll build -d /out
