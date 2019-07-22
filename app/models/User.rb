class User

    @@all = []
    def initialize
        User.all << self
    end

    def self.name
        @@all
    end

    def recipe_cards
        RecipeCards.all.select do |recipe_card_inst|
            recipe_card_inst.user == self
        end
    end

    def recipe
        recipe_card.map do |recipe_card_inst|
            recipe_card_inst.recipe
        end
    end

    def add_recipe_card (recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy (ingredient)
        Allergy.new(ingredient, self)
    end

    def allergy_list
        Allergy.all.select do |allergy_instance|
            allergy_instance.user == self
        end
    end

    def allergens
        allergy_list.map do |allergy_inst|
            allergy_inst.ingredient
        end
    end

end