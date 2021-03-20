class NHL_Api
    attr_reader :response

    def initialize
        url = "https://statsapi.web.nhl.com/api/v1/teams"
        uri = URI.parse(url)
        response = Net::HTTP.get(uri)
        @response = JSON.parse(response)
    end
end
