# README

Things you may want to cover:

### Ruby version

> 2.3.0

### Rails version

> 5.0.4

### Gems used

##### Database
> pg

##### Render JSON API
> active_model_serializer

##### Image management
> carrierwave

> mini_magick

> fog-aws (Pending)

##### Twitter integration
> twitter

##### Configuration for environtment variables 
> figaro

##### Unit testing
> database_cleaner

> faker

> factory_girl_rails

> rspec-rails

### System dependencies

##### Carrierwave dependencies

You must have Imagemagick and MiniMagick installed to do image resizing. MiniMagick is a Ruby interface for Imagemagick which is a C program. This is why MiniMagick fails on 'bundle install' without Imagemagick installed.

> brew install imagemagick

### Configuration

##### Twitter Integration

Set the following variables in application.yml

> TWITTER_API_KEY: <api_key> 

> TWITTER_API_SECRET: <api_secret>

> TWITTER_ACCESS_TOKEN: <access_token>

> TWITTER_ACCESS_TOKEN_SECRET: <access_token_secret>

##### Database configuration

> rake db:create

> rake db:migrate

##### How to run the test suite

> rake db:test:prepare

> rspec
