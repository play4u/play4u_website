require 'sinatra'
require_relative 'timed_rest_client'
require_relative 'settings'
require_relative 'listener'
require_relative 'music_jockey'

get '/ping' do
  "Hello World! The time is #{Time.now}"
end