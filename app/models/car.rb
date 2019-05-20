# **Car**
#
#   - Get a list of all cars
#
#   - Get a list of all car classifications
#
#   - Get a list of mechanics that have an expertise that matches the car classification


class Car

  #   - Get a list of all car classifications
  attr_accessor :make, :model, :registration, :classification, :owner, :mechanic

  @@all = []
  
  #   - Get a list of mechanics that have an expertise that matches the car classification
  def initialize(make, model, registration, classification, owner, mechanic)
    @make = make
    @model = model
    @registration = registration
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  #   - Get a list of all cars
  def self.all
    @@all
  end
end
