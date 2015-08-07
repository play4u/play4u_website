require 'sinatra'

get '/ping' do
  "Hello World! The time is #{Time.now}"
end