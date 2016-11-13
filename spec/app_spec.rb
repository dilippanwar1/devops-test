require 'simplecov'
require 'simplecov-rcov'
SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::RcovFormatter
]
SimpleCov.start
require 'rack/test'
require_relative '../app.rb'
ENV['RACK_ENV'] = 'test'
#set :environment, :test
def app
    Sinatra::Application
end

describe 'My app' do
  include Rack::Test::Methods
  it 'should show a default page' do
    get'/'
    expect(last_response).to be_ok
    #last_response.should be_ok
    #@response.body.should == 'Hello world!'
  end
end
