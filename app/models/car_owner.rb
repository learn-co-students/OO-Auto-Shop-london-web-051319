class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    cars.map { |car| car.mechanic}
  end

  def self.avgCar
    (self.all.count.to_f / Car.all.count.to_f)
  end
end
