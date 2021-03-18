require 'pry'
require 'net/http'
require 'json'


class TeamSearch
  attr_reader :divisions

  # def initialize(array)

  # end


  def divisions
    nhl_api_link = "https://statsapi.web.nhl.com/api/v1/"

    divisionsUrl = nhl_api_link + "divisions"
    divisionsUri = URI.parse(divisionsUrl)
    dResponses = Net::HTTP.get(divisionsUri)
    json = JSON.parse(dResponses)
    
    division = json["divisions"]
    
    divisionList = division.map {|d| d["name"]}
  end

  # binding.pry
end