class Car
  include Helper
  attr_reader :make, :model, :owner, :mechanic, :classification

  def initialize(*args)
    vars = %w(make model classification owner mechanic)
    super(vars, args)
  end

  def self.all_classifications
    self.all.map(&:classification).uniq
  end

  def mechanics
    Mechanic.all.select{|mechanic| mechanic.specialty == @classification}
  end
end
