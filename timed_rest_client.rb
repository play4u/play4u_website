require 'rest_client'

class TimedRestClient
  def self.get(uri, params)
    return create_resource(uri).get params
  end
  
  def self.post(uri, params)
    return create_resource(uri).post params
  end
  
  def self.put(uri, params)
    return create_resource(uri).put params
  end
  
  def self.delete(uri, params)
    return create_resource(uri).delete params
  end
  
  #
  # protected
  protected
  def create_resource(uri)
    RestClient::Resource.new uri, 
                                    :timeout => settings.service_timeout.to_i, 
                                    :open_timeout => settings.service_timeout.to_i
  end
end