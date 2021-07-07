class Mechanic

  @@all = []

  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |car|car.mechanic == self }
  end

  def customers
    cars.map { |car|car.car_owner }
  end

  def names
    customers.map { |customer|customer.name}
  end

end
