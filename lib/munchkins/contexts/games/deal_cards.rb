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
        Policies::Games::MinimumAmountOfPlayers.call(game)
      end

      class GameState < Struct.new(:message)
      end

      private

      attr_reader :games
    end
  end
end
