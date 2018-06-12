require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_response_code
    @single_postcode_data['status']
  end

  def get_result
    @single_postcode_data['result']
  end

  def get_postcode_length
    get_result["postcode"].gsub(' ','').length
  end

  def get_quality_key
    get_result['quality']
  end

  def get_ordnance_eastings
    get_result['eastings']
  end

  def get_ordnance_northings
    get_result['northings']
  end

  def get_country
    get_result['country']
  end
end

# call = SinglePostcodeService.new
# call.get_single_postcode("SW155DU")
# call.get_postcode
