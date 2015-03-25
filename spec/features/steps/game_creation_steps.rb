module GameCreationSteps
  step "a game with name :game_name exists" do |game_name| 
    Contexts::Games::Creator.create(game_name)
  end

  step "a player with name :player_name exists" do |player_name| 
    Contexts::Players::Creator.create(player_name)
  end

  step "a player with name :player_name is assign to game :game_name" do |player_name, game_name|
    Contexts::Games::PlayerAssigner.assign(player_name, game_name)
  end

  step "game :game_name deals cards" do |game_name| 
    @game_state = Contexts::Games::DealCards.for(game_name)
  end

  step "the game should show the message: :msg" do |msg| 
    expect(@game_state.message).to eql "Minimum game players is 2"
  end

  step "the game should be invalid" do 
    expect(@game_state.valid?).to eql false
  end
end

RSpec.configure { |c| c.include GameCreationSteps }
