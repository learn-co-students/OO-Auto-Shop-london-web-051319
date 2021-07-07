class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name:)
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
  	cars.map{|car| car.mechanic}
  end

  def self.car_count
  	Car.all.count.to_f	
  end

  def self.owner_count
  	self.all.count.to_f
  end

  def self.average
  	self.car_count / self.owner_count
  end


end
