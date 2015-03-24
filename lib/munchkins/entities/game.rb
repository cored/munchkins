class Game
  include Lotus::Entity

  attributes :name

  def amount_of_players
    players.count
  end

  def players
    PlayerRepository.find_all_for_game(id)
  end
end
