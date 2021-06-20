Members-only project, through The Odin Project

This project aimed to familiarize students with
the Devise gem, for managing logging in users.

The main task was to enable logged in users to
see the author of a post, but not for those not
logged in.

The app used 2 models, Post and User (through Devise)
Users had_many posts, and posts belong_to users.

The database used was postgreSQL, for deploying to
heroku, link:

https://afternoon-sea-86812.herokuapp.com

