require_relative '../config/environment.rb'

class NHL_Api
    attr_reader :response

    # TeamSearch.new.division

    def initialize
        
        url = "https://statsapi.web.nhl.com/api/v1/divisions"
        uri = URI.parse(url)
        response = Net::HTTP.get(uri)
        json = JSON.parse(response)
        division = json["divisions"]
        
        divisionList = division.each do |d| 
            puts d["name"]
        end    
    end

end
