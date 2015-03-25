module Policies
  module Games
    class MaximumAmountOfPlayers
      def self.validate(game)
        if (game.players.count > 6)
          "Maximum amount of players is 6"
        end
      end
    end
  end
end
