class Car

  attr_reader :make, :model, :classification, :mechanic, :owner

  @@cars = []

  def initialize(make, model, classification, mechanic, owner)
    @owner = owner
    @mechanic = mechanic
    @make = make
    @model = model
    @classification = classification
    @@cars << self
  end

  def self.all
    @@cars
  end

  def self.list_all_classifications
    @@cars.map(&:classification).uniq
  end

  def mechanics_with_matching_specialization
    Mechanic.all.select { |mechanic| mechanic.specialty == self.classification}
  end

end
