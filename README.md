Geni Rails Example
==================

About
-----

This is a simple Rails app demonstrating the usage of the [geni gem](http://github.com/aurels/geni).

Getting Started
---------------

Clone the repository :

    $ git clone git://github.com/aurels/geni-rails-example.git

Configure your DB params in *config/database.yml*, copy the geni intializer and edit it with you credentials :

    $ cp config/initializers/geni.rb.example config/initializers/geni.rb
    $ emacs config/initializers/geni.rb

Install dependencies :

    $ bundle install

Run the server and enjoy it on http://localhost:3000 :

    $ rails server
