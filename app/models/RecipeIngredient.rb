class RecipeIngredient

    attr_accessor :recipe, :ingredient

    @@all = []
    def initialize (recipe, ingredient)
        @recipe = recipe
        @ingredient = ingredient
        RecipeIngredient.all << self
    end

    def self.name
        @@all
    end

end