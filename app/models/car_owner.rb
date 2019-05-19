class CarOwner
  include Helper
  attr_reader :name

  def initialize(*args)
    vars = %w(name)
    super(vars, args)
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    cars.map(&:mechanic).uniq
  end

  def self.avg_car_amount
    a = self.all
    a.map{|owner| owner.cars.length}.
    reduce(:+) / a.length
  end

  def buy_a_car(make, model, classification, mechanic)
    return "Error" if mechanic.specialty != classification
    Car.new(make, model, classification, self, mechanic)
  end
end
