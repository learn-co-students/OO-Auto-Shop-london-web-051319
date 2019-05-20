require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

alex = CarOwner.new("Alex")
sam = CarOwner.new("Sam")
catherine = Mechanic.new("Catherine", "classic")
steve = Mechanic.new("Steve", "sports")
alex.buy_car("Ferrari", "S1", "sports", steve)
sam.buy_car("Mini", "Cooper", "classic", catherine)
alex.buy_car("Bentley", "Continental", "classic", catherine)

binding.pry
