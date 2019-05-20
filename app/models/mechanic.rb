class Mechanic

  attr_reader :name, :specialty

  @@mechanics = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@mechanics << self
  end

  def self.all
    @@mechanics
  end

  def cars_serviced
    Car.all.select {|car| car.mechanic == self}
  end

  def car_owners
    cars_serviced.map {|car| car.owner}
  end

  def owners_names
    car_owners.map {|owner| owner.name}
  end

end
