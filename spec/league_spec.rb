require './lib/league'
require './lib/team'
require './lib/player'

describe Team do 
  it 'exists' do 
    premier = League.new("Premier League")

    expect(premier).to be_a(League)
  end 

  describe '#name' do 
    it 'has a name' do 
      premier = League.new("Premier League")

      expect(premier.name).to eq("Premier League")
    end 
  end 

  describe "#teams" do 
    it 'starts with no teams' do 
      premier = League.new("Premier League")

      expect(premier.teams).to eq([])
    end 
  end 

  describe "#add_team" do 
    it 'can add teams' do 
      premier = League.new("Premier League")
      roy = Player.new({name: "Roy Kent", 
                        position: "Center Midfielder", 
                        salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", 
                        position: "Right-back Defender", 
                        salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
      jamie = Player.new({name: "Jamie Tartt", 
                          position: "Striker", 
                          salary: 1_500_000})
      fernandinho = Player.new({name: "Fernandinho", 
                                position: "Midfielder", 
                                salary: 5_200_000})
      manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
      premier.add_team(richmond)
      premier.add_team(manchester)

      expect(premier.teams).to eq([richmond, manchester])
    end 
  end 

  describe '#captains' do 
    it 'can return both teams captains' do 
      premier = League.new("Premier League")
      roy = Player.new({name: "Roy Kent", 
                        position: "Center Midfielder", 
                        salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", 
                        position: "Right-back Defender", 
                        salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
      jamie = Player.new({name: "Jamie Tartt", 
                          position: "Striker", 
                          salary: 1_500_000})
      fernandinho = Player.new({name: "Fernandinho", 
                                position: "Midfielder", 
                                salary: 5_200_000})
      manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
      premier.add_team(richmond)
      premier.add_team(manchester)

      expect(premier.captains).to eq([roy, fernandinho])
    end 
  end 

  describe '#players_by_team' do 
    it 'can return players by their team' do 
      premier = League.new("Premier League")
      roy = Player.new({name: "Roy Kent", 
                        position: "Center Midfielder", 
                        salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", 
                        position: "Right-back Defender", 
                        salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
      jamie = Player.new({name: "Jamie Tartt", 
                          position: "Striker", 
                          salary: 1_500_000})
      fernandinho = Player.new({name: "Fernandinho", 
                                position: "Midfielder", 
                                salary: 5_200_000})
      manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
      premier.add_team(richmond)
      premier.add_team(manchester)

      expect(premier.players_by_team).to eq({ 
                                              richmond => ["Roy Kent", "Sam Obisanya"], 
                                              manchester => ["Jamie Tartt", "Fernandinho"]
                                            })
    end 
  end 

  describe '#most_expensive_player' do 
    it 'can find most expensive player' do 
      premier = League.new("Premier League")
        roy = Player.new({name: "Roy Kent", 
                          position: "Center Midfielder", 
                          salary: 1_000_000})
        sam = Player.new({name: "Sam Obisanya", 
                          position: "Right-back Defender", 
                          salary: 600_000})
        richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
        jamie = Player.new({name: "Jamie Tartt", 
                            position: "Striker", 
                            salary: 1_500_000})
        fernandinho = Player.new({name: "Fernandinho", 
                                  position: "Midfielder", 
                                  salary: 5_200_000})
        manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
        premier.add_team(richmond)
        premier.add_team(manchester)

        expect(premier.most_expensive_player).to eq("Fernandinho")
    end 
  end 
end 