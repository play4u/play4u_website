require_relative 'person'
require_relative 'location'

module MusicJockeyService
  BASE_ROUTE='/music_jockeys'
end

get MusicJockeyService::BASE_ROUTE+'/*' do |mj_id|
  RestClient.get settings.play4u_services_base_url+request.path_info+'/'+mj_id
end

post MusicJockeyService::BASE_ROUTE do
  params={
    email: request[Person::Params::EMAIL],
    stage_name: request[MusicJockey::Params::STAGE_NAME],
    socket_ip: request[Location::Params::IP],
    socket_port: request[Location::Params::PORT],
    longitude: request[Location::Params::LONG],
    latitude: request[Location::Params::LAT]  
  }
  
  RestClient.post settings.play4u_services_base_url+request.path_info, params
end

put MusicJockeyService::BASE_ROUTE+'/*' do |mj_id|
  params={
    email: request[ListenerParams::EMAIL],
    stage_name: request[MusicJockey::Params::STAGE_NAME],
    socket_ip: request[Location::Params::IP],
    socket_port: request[Location::Params::PORT],
    longitude: request[Location::Params::LONG],
    latitude: request[Location::Params::LAT]   
  }
  
  RestClient.put settings.play4u_services_base_url+request.path_info+'/'+mj_id, params
end

delete MusicJockeyService::BASE_ROUTE+'/*' do |mj_id|
  RestClient.put settings.play4u_services_base_url+request.path_info+'/'+mj_id
end