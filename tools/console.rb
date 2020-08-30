require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#airbnb

listing_one = Listing.new('Seattle')
listing_two = Listing.new('Brooklyn')
listing_three = Listing.new('Austin')

guest_one = Guest.new('Devin')
guest_two = Guest.new('Brendan')
guest_three = Guest.new('Jeff')
guest_four = Guest.new('Max')

trip_one = Trip.new(listing_one, guest_one)
trip_two = Trip.new(listing_two, guest_two)
trip_three = Trip.new(listing_three, guest_three)
trip_four = Trip.new(listing_one, guest_three)

#bakery 

bakery_one = Bakery.new('Just Desserts')
bakery_two = Bakery.new('Cocohodo')
bakery_three = Bakery.new('Dessert Lounge')

ingredient_one = Ingredients.new('Chocolate', 230)
ingredient_two = Ingredients.new('Chocolate Mousse', 334)
ingredient_three = Ingredients.new('Chocolate Sprinkles', 170)
ingredient_four = Ingredients.new('Strawberry', 70)

dessert_one = Dessert.new('Dessert One', bakery_one, [ingredient_two, ingredient_one])
dessert_two = Dessert.new('Dessert Two', bakery_two, [ingredient_three, ingredient_two, ingredient_one])
dessert_three = Dessert.new('Dessert Three', bakery_one, [ingredient_four, ingredient_two])
dessert_four = Dessert.new('Dessert Four', bakery_two, [ingredient_four, ingredient_three])
dessert_five = Dessert.new('Dessert Five', bakery_three, [ingredient_one, ingredient_three])

#lyft

driver_one = Driver.new('Devin')
driver_two = Driver.new('Brendan')
driver_three = Driver.new('Karley')

passenger_one = Passenger.new('Tim')
passenger_two = Passenger.new('Brooke')
passenger_three = Passenger.new('Jeff')
passenger_four = Passenger.new('Austin')

ride_one = Ride.new(passenger_one, driver_three, 74.23)
ride_two = Ride.new(passenger_two, driver_one, 12.37)
ride_three = Ride.new(passenger_one, driver_two, 42.30)
ride_four = Ride.new(passenger_three, driver_three, 23.20)
ride_five = Ride.new(passenger_four, driver_two, 13.04)

Pry.start
