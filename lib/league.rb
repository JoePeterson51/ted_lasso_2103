class League
  attr_reader :name, :teams 
  def initialize(name)
    @name = name 
    @teams = []
    @captains = []
    @players_by_team = Hash.new { |hash, key| hash[key] = [] }
  end 

  def add_team(team)
    @teams << team 
  end 

  def captains
    captains = @teams.map do |team|
      team.captain
    end 
    captains.map do |captain|
      @teams.map do |team|
        team.players.map do |player|
          if player.name == captain
            @captains << player
          end 
        end
      end
    end.flatten.compact.uniq 
  end

  def players_by_team
    @teams.each do |team|
      team.players.each do |player|
        @players_by_team[team] << player.name
      end 
    end 
    @players_by_team
  end 

  def most_expensive_player
    @captains.find do |captain|
      
    end 
  end 
end 