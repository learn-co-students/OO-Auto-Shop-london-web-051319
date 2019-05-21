class Mechanic

   attr_accessor :name, :specialty, :cars, :owners

# CLASS **********************

   @@all = []

   def self.all
      @@all
   end

   def initialize(name: , specialty: )
      @name = name
      @specialty = specialty
      @@all << self
   end

   def self.owners_w_mechanics
      a = all.collect do |inst|
         inst.owners
      end.flatten
      a.map(&:name).uniq
   end

   # INSTANCE *******************

   def cars
      Car.all.select{|inst| inst.mechanic == self}
   end

   def owners
      self.cars.map{|inst| inst.owner}.uniq
   end

end