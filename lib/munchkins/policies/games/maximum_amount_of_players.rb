module Policies
  module Games
    class MaximumAmountOfPlayers
      MAXIMUM_AMOUNT_OF_PLAYERS = 6
      def self.validate(game)
        if (game.players.count > MAXIMUM_AMOUNT_OF_PLAYERS)
          "Maximum amount of players is #{MAXIMUM_AMOUNT_OF_PLAYERS}"
        end
      end
    end
  end
end
