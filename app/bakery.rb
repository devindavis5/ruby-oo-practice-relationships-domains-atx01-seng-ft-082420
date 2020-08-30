class Bakery
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def ingredients
        result = self.desserts.map do |dessert|
            dessert.ingredients
        end
        result.flatten
    end

    def total_calories
        result = self.ingredients.map do |ingredient|
            ingredient.calorie_count
        end
        result.inject(0, :+)
    end

    def average_calories
        self.total_calories / self.ingredients.count
    end

    def shopping_list
        self.ingredients.map do |ingredient|
            ingredient.name
        end
    end
end