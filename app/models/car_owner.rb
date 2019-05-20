# **CarOwner**
#
#   - Get a list of all owners
#
#   - Get a list of all the cars that a specific owner has
#
#   - Get a list of all the mechanics that a specific owner goes to
#
#   - Get the average amount of cars owned for all owners


class CarOwner

  attr_accessor :name, :cars, :mechanic

  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  end

  #- Get a list of all owners
  def self.all
    @@all
  end

  # - Get a list of all the cars that a specific owner has
  def cars
    Car.all.select do |car| car.owner == self.name
  end
  #- Get a list of all the mechanics that a specific owner goes to
  def mechanics
    cars.map do |car| car.mechnic.uniq
  end

  #- Get the average amount of cars owned for all owners
  def cars_owned
    cars.length
  end

  def mechanic_employed
    mechanic.lenght
  end


end
