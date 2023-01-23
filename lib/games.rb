class Games
    attr_accessor :name, :sales 
    @@games = []

    def initialize(game_name, game_sales)
        @name = game_name
        @sales = game_sales

        @@games << self 
    end

    def self.all 
        @@games
    end
end
