release: bundle exec rails db:migrate db:seed
release: bundle exec rake webpacker:install
web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}