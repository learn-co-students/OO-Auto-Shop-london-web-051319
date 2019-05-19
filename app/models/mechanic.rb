class Mechanic
  include Helper
  attr_reader :name, :specialty

  def initialize(*args)
    vars  = %w(name specialty)
    super(vars, args)
  end

  def cars
    Car.all.select{|car| car.mechanic == self}
  end

  def owners
    cars.map(&:owner).uniq
  end

  def owner_names
    owners.map(&:name)
  end

end
