module Contexts 
  module Games
    class GameState < Struct.new(:errors)
      def valid?
        errors.empty?
      end
    end
  end
end
