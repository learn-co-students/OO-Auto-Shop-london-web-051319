module Helper
  def self.included(klass)
    klass.module_exec do
      @all = []
    end
    klass.singleton_class.send(:attr_reader, :all)
  end

  def initialize(vars, args)
    vars.each_with_index {|var, i| instance_variable_set("@#{var}", args[i])}
    self.class.all << self
  end
end
