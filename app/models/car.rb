class Car

   # attr_reader :make, :model, :registration
   attr_accessor :make, :model, :registration, :classification, :owner, :mechanic

   # CLASS **********************

   @@all = []

   def self.all
      @@all
   end

   def initialize(make: , model: , registration: , classification: , owner: , mechanic: )
      @make = make
      @model = model
      @registration = registration
      @classification = classification
      @owner = owner
      @mechanic = mechanic
      @@all << self
   end

   def self.classifications
      Car.all.map(&:classification)
      # Car.all.map(&:classification).uniq if you want to remove duplicates
   end

# INSTANCE **********************

def mechanics_expertise
   Mechanic.all.select{|inst| inst.specialty ==classification}
end

end