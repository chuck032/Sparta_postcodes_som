require 'httparty'
require 'json'

class MultiPostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

end

# call = MultiPostcodeService.new
# puts call.get_multiple_postcodes(["B601JA", "SW155DU"])
