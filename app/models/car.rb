class Car

  @@all = []

  attr_reader :make, :model, :car_owner, :mechanic, :classification

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    Car.all.map { |car|car.classification }
  end

  def mechanic_specialities
    Mechanic.all.select { |mechanic|mechanic.specialty == classification }
  end

end
