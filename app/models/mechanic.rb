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

  def mechanics_cars
    Car.all.select { |car| car.mechanic == self }
  end

  def mechanics_clients
    mechanics_cars.map(&:owner)
  end

  def mechanics_clients_names
    mechanics_clients.map(&:name)
  end

end
