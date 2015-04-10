module Contexts
  module Games
    class PlayerAssigner
      def self.assign(player_name, game_name)
        new(player_name, game_name).assign
      end

      def initialize(player_name, 
                     game_name, 
                     games = GameRepository, players = PlayerRepository)
        @player_name = player_name
        @game_name = game_name
        @games = games
        @players = players
      end

      def assign
        player.game_id = game.id
        players.update(player)
      end

      def game
        @game ||= games.find_by_name(game_name)
      end

      def player
        @player ||= players.find_by_name(player_name)
      end

      private

      attr_reader :games, :players, :player_name, :game_name
    end
  end
end
