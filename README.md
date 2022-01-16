Chitter Challenge:
Task
Build a Twitter clone that will allow users to post messages to a public stream.

DELIVERED:
As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

My Approach

I had created the app in Ruby and also adopted the Sinatra framework since they go really well together. As for storing the peeps, this was achieved by using PG and PostGresQL. 

Directory Structure:

├── chitter-challenge/
│   ├── lib/
│   │   ├── message.rb
│   │   └──database_connection.rb
│   │
│   ├── views/
│   │   └── index.erb
├── app.rb
└── database_connection_setup.rb
│
├── spec/
│   │── features/
│   ├── database_helpers.rb
│   ├── message_spec.rb
│   ├── spec_helper.rb
│   └── setup_test_database.rb

Follow the below instructions on your terminal to download the app:

$ git clone https://github.com/izaowl/chitter-challenge.git
$ cd chitter-challenge
$ bundle
$ ruby app.rb (rackup not implemented)

visit http://localhost:4567/ to see the current functionality
=================

FUTURE ENHANCEMENTS (User Stories)
As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter


As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep

https://github.com/makersacademy/chitter-challenge