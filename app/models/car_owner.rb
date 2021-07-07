class CarOwner

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |car|car.car_owner == self  }
  end

  def mechanics
    cars.map { |car|car.mechanic }
  end

  def self.average_cars
    Car.all.length / CarOwner.all.length
  end
end
