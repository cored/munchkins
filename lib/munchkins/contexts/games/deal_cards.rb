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
        game_state.errors = policies.map do |policy|
          policy.validate(game)
        end.compact
        game_state
      end

      private

      def game_state
        @game_state ||= Contexts::Games::GameState.new
      end

      def policies
        [Policies::Games::MinimumAmountOfPlayers,
         Policies::Games::MaximumAmountOfPlayers]
      end

      attr_reader :games
    end
  end
end
