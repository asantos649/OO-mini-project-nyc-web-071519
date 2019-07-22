class Recipe

    @@all = []
    def initialize
        Recipe.all << self
    end

    def self.name
        @@all
    end

end