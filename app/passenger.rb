require 'pry'
class Passenger
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
            ride.passenger == self
        end
    end

    def drivers
        self.rides.map do |ride|
            ride.driver
        end
    end

    def total_distance
        self.rides.map do |ride|
            ride.mileage
        end.inject(0, :+)
    end

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end
end