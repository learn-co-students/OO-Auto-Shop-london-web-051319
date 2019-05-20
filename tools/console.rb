require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

dan = CarOwner.new("Dan")
bill = CarOwner.new("Bill")
bob = CarOwner.new("Bob")

todd = Mechanic.new("Todd", "Sports")
chris = Mechanic.new("Chris", "Hatchback")
aiden = Mechanic.new("Aiden", "Sports")


bmw = Car.new("BMW", "M3", "Sports", dan, todd)
vw = Car.new("VW", "Golf", "Hatchback", bill, chris)
fiat = Car.new("Fiat", "Punto", "Hatchback", bob, aiden)

binding.pry
