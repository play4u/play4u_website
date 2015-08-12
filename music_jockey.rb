require_relative 'person'
require_relative 'location'

module MusicJockeyService
  BASE_ROUTE='/music_jockeys'
end

module MusicJockey
  module Params
    ID='id'
  end
end

get MusicJockeyService::BASE_ROUTE+"/:#{MusicJockey::Params::Id}" do
  RestClient.get settings.play4u_services_base_url+request.path, {}, settings
end

post MusicJockeyService::BASE_ROUTE do
  TimedRestClient.post settings.play4u_services_base_url+request.path, params, settings
end

put MusicJockeyService::BASE_ROUTE+"/:#{MusicJockey::Params::Id}" do  
  TimedRestClient.put(settings.play4u_services_base_url+request.path, params,settings)
end

delete MusicJockeyService::BASE_ROUTE+"/:#{MusicJockey::Params::Id}" do
  TimedRestClient.delete(settings.play4u_services_base_url+request.path,{},settings)
end
