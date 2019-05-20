require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


mechanic1 = Mechanic.new(name: "Bob Bob", specialty: "antique")
mechanic2 = Mechanic.new(name: "Brrrr", specialty: "antique")
mechanic3 = Mechanic.new(name: "Bob K", specialty: "sports")

carowner1 = CarOwner.new(name: "james")
carowner2 = CarOwner.new(name: "bran")
carowner3 = CarOwner.new(name: "hugh")

car1 = Car.new(make: "audi", model: "A4", classification: "sports", owner: carowner1, mechanic: mechanic3)
car2 = Car.new(make: "Morris", model: "Minor", classification: "antique", owner: carowner2, mechanic: mechanic3)


binding.pry
