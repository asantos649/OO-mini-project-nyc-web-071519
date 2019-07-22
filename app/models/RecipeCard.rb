class RecipeCard

    attr_accessor :user, :recipe, :date, :rating

    @@all = []
    def initialize (user, recipe, date, rating)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe
        RecipeCard.all << self
    end

    def self.name
        @@all
    end

end