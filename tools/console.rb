require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

awa = CarOwner.new("Awa")
roda = CarOwner.new("Roda")
fata = CarOwner.new("Fata")

mechanic1 = Mechanic.new("awa", "urban")
mechanic2 = Mechanic.new("roda", "modern")
mechanic3 = Mechanic.new("fata", "stylish")

car1 = Car.new("fiat", "x500", "urban", awa, mechanic1)
car2 = Car.new("bmw", "x5", "modern", roda, mechanic2)
car3 = Car.new("porsche", "cayanne", "stylish", fata, mechanic3)



binding.pry
