require 'rest_client'

class TimedRestClient
  def self.get(uri, params,settings)
    create_resource(uri,settings).get params
  end
  
  def self.post(uri, params,settings)
    create_resource(uri,settings).post params
  end
  
  def self.put(uri, params,settings)
    create_resource(uri,settings).put params
  end
  
  def self.delete(uri, params,settings)
    create_resource(uri,settings).delete params
  end
  
  #
  # protected
  protected
  def self.create_resource(uri,settings)
    RestClient::Resource.new uri, 
                                    :read_timeout => settings.service_timeout.to_i, 
                                    :open_timeout => settings.service_timeout.to_i
  end
end
