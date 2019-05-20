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

  def service
    Car.all.select {|car| car.mechanic == self}
  end

  def customers
    service.map {|car| car.owner}.uniq
  end

  def customerNames
    customers.map {|owner| owner.name}
  end

end
