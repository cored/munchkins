module Policies
  module Games
    class MinimumAmountOfPlayers
      def self.call(game)
        if (game.players.count < 2)
          Contexts::Games::DealCards::GameState.new("Minimum game players is 2")
        end
      end
    end
  end
end
