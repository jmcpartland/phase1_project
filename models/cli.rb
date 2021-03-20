class CLI
  attr_reader :nhl_api, :nhl
  
    def initialize
      @prompt = TTY::Prompt.new
      welcome
      menu
    end
  
    def welcome
      puts "\nWelcome to the NHL team information app.\n\n"
    end
    
    
    def menu

      nhl = TeamSearch.new.divisions

      input = @prompt.enum_select("Select a division you want to see a list of teams for.", [nhl, "Exit"])

      # input = @prompt.enum_select("Select the division to find your team.", ["Discover Central", "Honda West", "MassMutual East", "Scotia North", "Exit"])
      
      case input
      when "Discover Central"
        puts "Discover Central"
      when "Honda West"
        puts "Honda West"
      when "MassMutual East"
        puts "MassMutual East"
      when "Scotia North"
        puts "Scotia North"
      when "Exit"
        puts "Exit"
      end
    end
end