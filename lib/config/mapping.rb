 collection :games do
   entity     Game
   repository GameRepository

   attribute :id,   Integer
   attribute :name, String
 end

 collection :players do
   entity     Player
   repository PlayerRepository

   attribute :id,   Integer
   attribute :name, String
   attribute :game_id, Integer
 end
