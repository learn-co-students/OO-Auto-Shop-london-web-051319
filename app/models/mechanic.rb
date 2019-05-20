class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.mechanic == self}
  end
  #Get a list of all cars that a mechanic services

  def car_owners
    cars.map {|car| car.car_owner}.uniq
  end
  #Get a list of all the car owners that go to a specific mechanic

  def car_owners_names
    car_owners_names = owner.map {|car| car.mechanic}
  end
  #Get a list of the names of all car owners who go to a specific mechanic

end
