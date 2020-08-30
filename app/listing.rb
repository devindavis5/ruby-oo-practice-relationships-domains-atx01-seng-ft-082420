class Listing
    attr_accessor :city
    @@all = []
    def initialize(city)
        @city = city
        self.class.all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        self.trips.map do |trip|
            trip.guest
        end
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        @@all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        self.all.max_by do |listing|
            listing.trip_count
        end
    end
end