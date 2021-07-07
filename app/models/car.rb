class Car

  attr_reader :make, :model, :owner, :mechanic, :classification

  @@cars = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@cars << self
  end

  def self.all
    @@cars
  end

  def self.all_classifications
    @@cars.select {|cars| cars.classification}
  end

  def find_mechanics
    Mechanic.all.select {|mechanic| mechanic.specialty == @classification}
  end



end
