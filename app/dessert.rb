class Dessert
    attr_accessor :name, :bakery, :ingredients
    @@all = []
    def initialize(name, bakery, ingredients)
        @bakery = bakery
        @ingredients = ingredients
        self.class.all << self
    end

    def self.all
        @@all
    end

    def calories
        self.ingredients.map do |ingredient|
            ingredient.calorie_count
         end.inject(0, :+)
    end
end