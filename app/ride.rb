class Ride
    attr_accessor :passenger, :driver, :mileage
    @@all = []
    def initialize(passenger, driver, mileage)
        @passenger = passenger
        @driver = driver
        @mileage = mileage
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        result = self.all.map do |ride|
            ride.mileage
        end
        result.inject(0, :+) / result.count
    end
end