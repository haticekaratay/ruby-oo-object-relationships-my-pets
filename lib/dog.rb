class Dog
  
  attr_reader:name
  attr_accessor :owner, :mood

  @@all = []
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = Owner.new(owner).name
    @@all << self
  end

  def self.all
    @@all
  end

end