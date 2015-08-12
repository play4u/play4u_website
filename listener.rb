require_relative 'person'
require_relative 'location'

module ListenerService
  BASE_ROUTE='/listeners'
end

module Listener
  module Params
    Id='id'
  end
end

get ListenerService::BASE_ROUTE+"/:#{Listener::Params::Id}" do
  RestClient.get settings.play4u_services_base_url+request.path,{},settings
end

post ListenerService::BASE_ROUTE do
  TimedRestClient.post(settings.play4u_services_base_url+request.path, params,settings)
end

put ListenerService::BASE_ROUTE+"/:#{Listener::Params::Id}" do
  TimedRestClient.put(settings.play4u_services_base_url+request.path, params, settings)
end

delete ListenerService::BASE_ROUTE+"/:#{Listener::Params::Id}" do
  TimedRestClient.delete(settings.play4u_services_base_url+request.path,{},settings)
end
