require 'sinatra'
require_relative 'settings'
require_relative 'timed_rest_client'
require_relative 'listener'
require_relative 'music_jockey'
require_relative 'reservations'
require_relative 'song_request'

get '/ping' do
  "Hello World! The time is #{Time.now}"
end