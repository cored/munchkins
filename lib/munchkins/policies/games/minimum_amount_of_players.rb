module Policies
  module Games
    class MinimumAmountOfPlayers
      MINIMUM_AMOUNT_OF_PLAYERS = 2

      def self.validate(game)
        if (game.amount_of_players < MINIMUM_AMOUNT_OF_PLAYERS)
          "Minimum game players is #{MINIMUM_AMOUNT_OF_PLAYERS}"
        end
      end
    end
  end
end
