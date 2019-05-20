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
    car_owners = Car.all.select {|car| car.car_owner == self }
  end
  #Get a list of all the cars that a specific owner has

  def mechanics
    cars.map {|car| car.mechanic }
  end
  #Get a list of all the mechanics that a specific owner goes to

  def self.ave_car_owner
    ave_cars_owned = Car.all.length/(Car_owner.all.length)
  end
  #Get the average amount of cars owned for all owners

end
