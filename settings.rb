if ENV['RACK_ENV'].to_s.to_sym == :production
  set :play4u_services_base_url, 'http://play4u-backend.herokuapp.com'
  set :spotify_service_base_url, 'https://api.spotify.com'
else
  set :play4u_services_base_url, 'http://localhost:3000'
  set :spotify_service_base_url, 'https://api.spotify.com'
end
