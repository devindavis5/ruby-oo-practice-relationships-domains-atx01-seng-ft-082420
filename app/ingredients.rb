class Ingredients
    attr_accessor :name, :calorie_count
    @@all = []
    def initialize(name, calorie_count)
        @calorie_count = calorie_count
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def dessert
        Dessert.all.select do |dessert|
            dessert.ingredients.include?(self)
        end
    end

    def bakery
        self.dessert.map do |dessert|
            dessert.bakery
        end
    end

    def self.find_all_by_name(ingredient)
        self.all.select do |ing|
            ing.name.include?(ingredient)
        end
    end
end