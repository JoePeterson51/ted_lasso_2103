require './lib/player'
require './lib/team'

describe Team do 
  it 'exists' do 
    roy = Player.new({name: "Roy Kent", 
                      position: "Center Midfielder", 
                      salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", 
                      position: "Right-back Defender", 
                      salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    expect(richmond).to be_a(Team)
  end 

  describe '#name' do 
    it 'has a name' do 
      roy = Player.new({name: "Roy Kent", 
                      position: "Center Midfielder", 
                      salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", 
                        position: "Right-back Defender", 
                        salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

      expect(richmond.name).to eq("AFC Richmond")
    end
  end 
  
  describe '#coach' do 
    it 'has a coach' do 
      roy = Player.new({name: "Roy Kent", 
                        position: "Center Midfielder", 
                        salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", 
                        position: "Right-back Defender", 
                        salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

      expect(richmond.coach).to eq("Ted Lasso")
    end 
  end 

  describe '#players' do 
    it 'has players' do 
      roy = Player.new({name: "Roy Kent", 
                        position: "Center Midfielder", 
                        salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", 
                        position: "Right-back Defender", 
                        salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

      expect(richmond.players).to eq([roy, sam])
    end
  end 

  describe '#total_salary' do 
    it 'can add total salary' do 
      roy = Player.new({name: "Roy Kent", 
                        position: "Center Midfielder", 
                        salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", 
                        position: "Right-back Defender", 
                        salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

      expect(richmond.total_salary).to eq(1600000)
    end 
  end  

  describe '#captain' do 
    it 'has a captain' do 
      roy = Player.new({name: "Roy Kent", 
                        position: "Center Midfielder", 
                        salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", 
                        position: "Right-back Defender", 
                        salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

      expect(richmond.captain).to eq("Roy Kent")
    end 
  end 

  describe '#positions_filled' do 
    it 'has the positions that are filled' do 
      roy = Player.new({name: "Roy Kent", 
                        position: "Center Midfielder", 
                        salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", 
                        position: "Right-back Defender", 
                        salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

      expect(richmond.positions_filled).to eq(["Center Midfielder", "Right-back Defender"])
    end 
  end 
end 


          