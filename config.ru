require 'bundler/setup'

require 'sinatra'
require 'sinatra/base'
require 'sinatra/contrib'

require 'sprockets'
require 'sprockets-less'
require 'less'
require 'haml'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets'
  environment.append_path 'assets/components'
  run environment
end

get '/' do
  haml :index
end

run Sinatra::Application
