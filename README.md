# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

### Carrierwave dependencies

You must have Imagemagick and MiniMagick installed to do image resizing. MiniMagick is a Ruby interface for Imagemagick which is a C program. This is why MiniMagick fails on 'bundle install' without Imagemagick installed.

> brew install imagemagick

* Configuration

### Twitter Integration

Set the following variables in application.yml

TWITTER_API_KEY: <api_key> 
TWITTER_API_SECRET: <api_secret>
TWITTER_ACCESS_TOKEN: <access_token>
TWITTER_ACCESS_TOKEN_SECRET: <access_token_secret>

* Database configuration

> rake db:create
> rake db:migrate

* How to run the test suite

> rake db:test:prepare
> rspec

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

### Heroku

* ....
