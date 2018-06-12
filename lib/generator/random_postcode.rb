require 'httparty'
require 'json'

class RandomPostcode
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_random_postcode
    JSON.parse(self.class.get("/random/postcodes").body)["result"]["postcode"].gsub(' ','')
  end


end

# test = RandomPostcode.new
# p test.get_random_postcode
