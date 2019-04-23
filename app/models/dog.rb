class Dog
  attr_accessor :name, :breed, :age
  @@all = []

  def initialize(attr)
    attr.each do |attribute, value|
      self.send("#{attribute}=", value)
    end
    @@all << self
  end

  def self.all
    @@all
  end
end
