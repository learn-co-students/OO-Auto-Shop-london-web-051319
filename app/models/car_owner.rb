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

  def buy_car(make, model, classification, mechanic)
    Car.new(make, model, classification, self, mechanic)
  end

  # def get_mechanic(car, mechanic)
  #   if self.classification == mechanic.specialty
  #     @mechanic = mechanic
  # end

  def cars_owned
    Car.all.select {|cars| cars.owner == self}
  end

  def mechanics
    cars_owned.map {|cars| cars.mechanic}
  end

  def self.avg_cars_owned
    Car.all.size.to_f / @@owners.size.to_f
  end

end
