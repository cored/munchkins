module Contexts
  module Games
    class DealCards
      def self.for(game_name)
        new.for(game_name)
      end

      def initialize(games = GameRepository)
        @games = games
      end

      def for(game_name)
        game = games.find_by_name(game_name)
        if (game.players.size < 2)
          GameState.new(message: "Minimum game players is 2")
        end
      end

      class GameState < Struct.new(:message)
      end

      private

      attr_reader :games
    end
  end
end
