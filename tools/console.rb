require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

OwnerOne = CarOwner.new("Jack")
OwnerTwo = CarOwner.new("Joseph")
OwnerThree = CarOwner.new("James")

MechanicOne = Mechanic.new("Seb", "Motorbikes")
MechanicTwo = Mechanic.new("Tel", "Racing")
MechanicThree = Mechanic.new("Reb", "Comfort")

CarOne = Car.new("Audi","R5","Comfort", OwnerOne, MechanicThree)
CarTwo = Car.new("Audi","R4","Racing", OwnerOne, MechanicTwo)
CarThree = Car.new("Audi","R3","Racing", OwnerTwo, MechanicTwo)
CarFour = Car.new("Audi","R1","Motorbikes", OwnerThree, MechanicOne)
binding.pry
