class Car

  attr_reader :make, :model, :owner, :mechanic, :classification

  @@all = []

  def initialize(make:, model:, classification:, owner:, mechanic:)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self

  end

  def self.all
  	@@all
  end

  def self.all_classification
  	self.all.map { |car| car.classification }
  end

  def mechanics_for_classification
  	Car.all.select	{|car| car.classification == car.mechanic.specialty}
  	
  end



  # def all_cars_mechanic
  # 	@@all.select {|car| car.mechanic == self}
  # end

end
