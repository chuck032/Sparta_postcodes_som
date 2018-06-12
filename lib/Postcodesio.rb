require_relative "services/single_postcode_service"
require_relative "services/multi_postcode_service"
require_relative "generator/random_postcode"

class Postcodesio
  include HTTParty


  base_uri 'https://api.postcodes.io'

  def single_postcode_service
    SinglePostcodeService.new
  end

  def multi_postcode_service
    MultiPostcodeService.new
  end

  def get_random_postcode
    RandomPostcode.new
  end


end

# service = Postcodesio.new
# p service.multi_postcode_service.get_multiple_postcodes(["HA80PX","B601JA"])
