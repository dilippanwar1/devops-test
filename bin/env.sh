#!/bin/bash
/bin/bash --login

source ~/.rvm/scripts/rvm
rvm list
rvm install 2.3.0
rvm use 2.3.0
rvm list
rvm gemset create sinatra230
rvm gemset use sinatra230
gem install sinatra --no-ri --no-doc
gem install bundle --no-ri --no-doc
gem install rspec --no-ri --no-doc
rspec spec/app_spec.rb
#rackup config.ru --port 8080
