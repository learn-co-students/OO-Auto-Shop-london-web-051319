class CarOwner

   attr_accessor :name, :cars, :mechanic

   # CLASS *******************

   @@all = []

   def self.all
      @@all
   end

   def initialize(name:)
      @name = name
      @@all << self
   end

   def self.av_cars_all_owners
      all.collect{|inst| inst.cars}.flatten.count.to_f/CarOwner.all.count.to_f
   end

   #  INSTANCE ****************

   def cars # links owners to cars
      Car.all.select{|inst| inst.owner == self}
   end
   # binding.pry

   def mechanics # links owners to mechanics through the filtered list of cars for this specific owner (self) as in cars above.
      cars.map{|inst| inst.mechanic}.uniq # is it self or just cars?
   end
   
   def cars_owned
      cars.length
   end

   def mechanics_employed
      mechanics.length
   end

end
