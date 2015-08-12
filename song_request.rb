require_relative 'location'
require_relative 'artist'
require_relative 'song'

module SongRequestService
  BASE_ROUTE='/artists/:artist_name/songs/:song_name/request'
end

post SongRequestService::BASE_ROUTE do
  TimedRestClient.put(settings.play4u_services_base_url+request.path, params, settings)
end