require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john = CarOwner.new("John")
james = CarOwner.new("James")
jackie = Mechanic.new("Jackie", "modern")
john.buy_a_car("Ferrari", "S1", "modern", jackie)

binding.pry
