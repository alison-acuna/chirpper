# README

Setup Steps

$ rails new chirpper

Swapped gemfile to working gemfile from personal project
Moved to PSQL following personal project

$ rails db:migrate
$ rake db:setup

$ bin/rails generate controller Chirps index --skip-routes


$ rails destroy controller Chirps


$ bin/rails generate model Chirps text:string
$ bin/rails db:migrate

$ psql chirpper_dev

Index Page Steps

1. Add route to config/routes.rb
2. $ bin/rails generate controller Chirps index --skip-routes
3. Update controllers/chirps_controller.rb
4. Update app/views/chirps/index.html.erb


To Check:

Can I clean up routes.rb
