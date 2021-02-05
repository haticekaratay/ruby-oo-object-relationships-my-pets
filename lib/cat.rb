class Cat
  # code goes here
  attr_accessor :owner , :mood
  attr_reader :name
  @@all = []
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @@all << self
    @owner = Owner.new(owner).name
    #binding.pry
  end
  
  def self.all
    @@all
    #binding.pry
  end
end