module Contexts
  module Games
    class Creator
      def self.create(game_name)
        new.create(game_name)
      end

      def initialize(games = GameRepository)
        @games = games
      end

      def create(game_name)
        games.create(Game.new(name: game_name))
      end

      private 

      attr_reader :games
    end
  end
end
