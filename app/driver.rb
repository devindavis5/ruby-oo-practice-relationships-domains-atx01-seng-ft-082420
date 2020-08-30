class Driver
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passengers
        self.rides.map do |ride|
            ride.passenger
        end
    end

    def total_distance
        self.rides.map do |ride|
            ride.mileage
        end.inject(0, :+)
    end

    def self.mileage_cap(distance)
        self.all.select do |driver|
            driver.total_distance > distance
        end
    end
end