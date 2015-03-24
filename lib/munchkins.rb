require 'lotus/model'
Dir["#{ __dir__ }/munchkins/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/munchkins_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/munchkins_development.db'
  #    adapter type: :sql, uri: 'postgres://localhost/munchkins_development'
  #    adapter type: :sql, uri: 'mysql://localhost/munchkins_development'
  #
  adapter type: :file_system, uri: ENV['MUNCHKINS_DATABASE_URL']

  ##
  # Database mapping
  #
  # You can specify mapping file to load with:
  #
  # mapping "#{__dir__}/config/mapping"
  #
  # Alternatively, you can use a block syntax like the following:
  #
  mapping do
    # collection :users do
    #   entity     User
    #   repository UserRepository
    #
    #   attribute :id,   Integer
    #   attribute :name, String
    # end
  end
end.load!
