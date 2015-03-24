module GameCreationSteps
  step "a game with name :game_name exists" do |game_name| 
    Contexts::Games::Creator.create(game_name)
  end

  step "a player with name :player_name is assign to game :game_name" do |player_name, game_name|
    Contexts::Games::PlayerAssigner.assign(player_name, game_name)
  end

  step "game :game_name deals cards" do |game_name| 
    @game = Contexts::Games::DealCards.for(game_name)
  end

  step "the game should show the message: :msg" do |msg| 
    expect(@game.state[:message]).to eql "Minimum game players is 2"
  end
end

RSpec.configure { |c| c.include GameCreationSteps }
