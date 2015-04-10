class GameRepository
  include Lotus::Repository

  def self.find_by_name(game_name)
    query do 
      where(name: game_name)
    end.first
  end
end
