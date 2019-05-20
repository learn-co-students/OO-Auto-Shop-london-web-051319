# **Mechanic**
#
#   - Get a list of all mechanics
#
#   - Get a list of all cars that a mechanic services
#
#   - Get a list of all the car owners that go to a specific mechanic
#
#   - Get a list of the names of all car owners who
#   go to a specific mechanic


class Mechanic

attr_accessor :name, :specialty, :cars, :owner

@@all = []

#   - Get a list of the names of all car owners who
#   go to a specific mechanic
def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self

end
#   - Get a list of all mechanics
def self.all
  @@all

end
#   - Get a list of all cars that a mechanic services
def cars
  Car.all.select do |car| car.mechanic == self.name
end
#   - Get a list of all the car owners that go to a specific mechanic
def owners
  self.car.map do |car| car.owner.uniq
end



end
