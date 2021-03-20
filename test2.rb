require 'pry'

class NHL_Api
    require 'net/http'
    require 'json'
    attr_reader :response, :division, :locationName, :firstYearOfPlay

    def initialize
        url = "https://statsapi.web.nhl.com/api/v1/teams"
        uri = URI.parse(url)
        response = Net::HTTP.get(uri)
        json = JSON.parse(response)
        @response = json["teams"]
    end
end


class Team
    attr_reader :name
  
    @@all = []
  
    def initialize(team_hash)
      @name = team_hash["name"]
      @division = team_hash["division"]
      @locationName = team_hash["locationName"]
      @firstYearOfPlay = team_hash["firstYearOfPlay"]
      @@all << self
    end
  
    def self.all
      @@all
    end
end
NHL_Api.new.response.each{|team_hash| Team.new(team_hash)}
binding.pry
