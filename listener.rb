module ListenerParams
  EMAIL='email'
  FNAME='first_name'
  LONG='longitude'
  LAT='latitude'
  IP='socket_ip'
  PORT='socket_port'
end

get '/listeners/*' do |listener_id|
  RestClient.get settings.play4u_services_base_url+request.path_info+'/'+listener_id
end

post '/listeners' do
  params={
    email: request[ListenerParams::EMAIL],
    first_name: request[ListenerParams::FNAME],
    socket_ip: request[ListenerParams::IP],
    socket_port: request[ListenerParams::PORT],
    longitude: request[ListenerParams::LONG],
    latitude: request[ListenerParams::LAT]  
  }
  
  RestClient.post settings.play4u_services_base_url+request.path_info, params
end

put '/listeners/*' do |listener_id|
  params={
    email: request[ListenerParams::EMAIL],
    first_name: request[ListenerParams::FNAME],
    socket_ip: request[ListenerParams::IP],
    socket_port: request[ListenerParams::PORT],
    longitude: request[ListenerParams::LONG],
    latitude: request[ListenerParams::LAT]   
  }
  
  RestClient.put settings.play4u_services_base_url+request.path_info+'/'+listener_id, params
end

delete '/listeners/*' do |listener_id|
  RestClient.put settings.play4u_services_base_url+request.path_info+'/'+listener_id
end
