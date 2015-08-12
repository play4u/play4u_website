module ReservationService
  BASE_ROUTE='/music_jockeys/:music_jockey_id/reservations'
end

module Reservation
  module Params
    Id='id'  
  end
end

get ReservationService::BASE_ROUTE+"/:#{Reservation::Params::Id}" do
  TimedRestClient.get(settings.play4u_services_base_url+request.path, params,settings)
end

post ReservationService::BASE_ROUTE do
  TimedRestClient.post(settings.play4u_services_base_url+request.path, params,settings)
end

put ReservationService::BASE_ROUTE+"/:#{Reservation::Params::Id}" do
  TimedRestClient.put(settings.play4u_services_base_url+request.path, params,settings)
end
