require 'pry'
require 'open-uri'
require 'net/http'
require 'json'

teamsUrl = "https://statsapi.web.nhl.com/api/v1/teams/"
teamsUri = URI.parse(teamsUrl)
responses = Net::HTTP.get(teamsUri)
json = JSON.parse(responses)

team = json["teams"]
# team[3]["name"]

teamList = team.each do |t| 
    puts t["name"]
end    

# puts json.values[1][0]



# teamsUrl = "https://statsapi.web.nhl.com/api/v1/teams/"
# teamsUri = URI.parse(teamsUrl)
# responses = Net::HTTP.get(teamsUri)
# json = JSON.parse(responses)

# team = json["teams"]
# # division = json[team]



# team[0]["division"]["name"]



# teamList = team.each do |t| 
#     puts t["name"]
# end    

binding.pry