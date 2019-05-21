require_relative "models/car.rb"
require_relative "models/car_owner.rb"
require_relative "models/mechanic.rb"
require "pry"

# Examples
howard = CarOwner.new(name: "Mr Howard")
reynolds = CarOwner.new(name: "Mrs Reynolds")
raleigh = CarOwner.new(name: "Sir Walter")

mechanic1 = Mechanic.new(name: "Gaz", specialty: "antique")
mechanic2 = Mechanic.new(name: "Bob", specialty: "modern")

volvo = Car.new(make: "Volvo", model: "S60", registration: "TY70 8UG", classification: "modern", owner: howard, mechanic: mechanic2)
bentley = Car.new(make: "Bentley", model: "Flash", registration: "M4D3 0F$", classification: "antique", owner: reynolds, mechanic: mechanic1)
porshe = Car.new(make: "Porshe", model: "Stallion", registration: "T00 F4ST", classification: "modern", owner: reynolds, mechanic: mechanic2)




binding.pry
puts "end"