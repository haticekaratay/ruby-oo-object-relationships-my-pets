require 'pry'
class Owner
  # code goes here
  attr_reader :name , :species

  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end
  
  def cats
    cats_array= Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    dogs_array = Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name)
    #Cat.all.find{|cat| cat.owner == self}
    cat = Cat.new(name,self)
    cat.owner = self
    #Cat.all << cat
    #binding.pry
  end

  def buy_dog(name)
    dog = Dog.new(name,self)
    dog.owner = self
  end

  def walk_dogs
    Dog.all.collect{|dog| dog.mood = 'happy'}
    #dog = Dog.new(name,self)
    #dog.mood = "happy"
    #binding.pry
  end

  def feed_cats
    Cat.all.collect{|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end
