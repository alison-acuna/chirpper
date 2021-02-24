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

[DONE]Allow visitors to the app to create a new chirp with custom text.
- What happens when a too long chirp is submitted
[DONE] Allow visitors to list all chirps.
- Could add a show button
The chirps list is displayed in chronological order where the latest chirp is at the top.
-- create array by chronological
-- display reverse 
The chirps list displays chirps entirely in UPPER CASE.
After a chirp has been saved to the database, simulate a push notification by making a request.
This is implemented by sending a properly constructed HTTP request to our push service.
Send an API request to the host, with the JSON payload in the body of the POST request, and that service will take care of the  rest.
API Hostname: https://bellbird.joinhandshake-internal.com/push
JSON payload: { chirp_id: 1234 }
HTTP Method: POST
Ensure the API request does not slow down web requests significantly.
Allow visitors to upvote chirps.
