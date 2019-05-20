class CarOwner

  attr_reader :name

  @@owners = []

  def initialize(name)
    @name = name
    @@owners << self
  end

  def self.all
    @@owners
  end

  def owners_cars
    Car.all.select { |car| car.owner == self }
  end

  def owners_mechanics
    Mechanic.all.select { |mechanic| mechanic.owner == self }
  end

  def buy_car(make, model, classification, mechanic)
    Car.new(make, model, classification, mechanic, self)
  end

  def self.average_cars_per_owner
    Car.all.size / @@owners.size.to_f
  end

end
