require_relative 'person'
require_relative 'location'

module ListenerService
  BASE_ROUTE='/listeners'
end

get ListenerService::BASE_ROUTE+'/*' do |listener_id|
  RestClient.get settings.play4u_services_base_url+request.path_info+'/'+listener_id
end

post ListenerService::BASE_ROUTE do
  params={
    email: request[Person::Params::EMAIL],
    first_name: request[Listener::Params::FNAME],
    longitude: request[Location::Params::LONG],
    latitude: request[Location::Params::LAT]  
  }
  
  TimedRestClient.post settings.play4u_services_base_url+request.path_info, params
end

put ListenerService::BASE_ROUTE+'/*' do |listener_id|
  params={
    email: request[ListenerParams::EMAIL],
    first_name: request[Listener::Params::FNAME],
    socket_ip: request[Location::Params::IP],
    socket_port: request[Location::Params::PORT],
    longitude: request[Location::Params::LONG],
    latitude: request[Location::Params::LAT]   
  }
  
  TimedRestClient.put settings.play4u_services_base_url+request.path_info+'/'+listener_id, params
end

delete ListenerService::BASE_ROUTE+'/*' do |listener_id|
  TimedRestClient.put settings.play4u_services_base_url+request.path_info+'/'+listener_id
end