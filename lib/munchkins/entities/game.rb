class Game
  include Lotus::Entity

  attributes :name

  def players
    PlayerRepository.find_all_for_game(id)
  end
end
