module Contexts
  module Players
    class Creator
      def self.create(player_name)
        new.create(player_name)
      end

      def initialize(players = PlayerRepository)
        @players = players
      end

      def create(player_name)
        players.create(Player.new(name: player_name))
      end

      private

      attr_reader :players
    end
  end
end
