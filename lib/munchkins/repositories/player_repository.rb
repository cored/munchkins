class PlayerRepository
  include Lotus::Repository

  def self.find_all_for_game(id)
    query do
      where(game_id: id)
    end
  end

  def self.find_by_name(player_name)
    query do 
      where(name: player_name)
    end.first
  end
end
