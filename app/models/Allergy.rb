class Allergy
    attr_accessor :ingredient, :user

    @@all = []
    def initialize (ingredient, user)
        @ingredient = ingredient
        @user = user
        Allergey.all << self
    end

    def self.name
        @@all
    end

end