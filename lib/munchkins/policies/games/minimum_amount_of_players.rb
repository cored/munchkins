module Policies
  module Games
    class MinimumAmountOfPlayers
      MINIMUM_AMOUNT_OF_PLAYERS = 2

      def self.call(game)
        if (game.players.count < MINIMUM_AMOUNT_OF_PLAYERS)
          Contexts::Games::GameState.new("Minimum game players is #{MINIMUM_AMOUNT_OF_PLAYERS}")
        end
      end
    end
  end
end
