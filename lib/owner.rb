require 'pry'
class Owner
  attr_accessor :pets
	attr_reader :species, :name

 @@owners = []

 def initialize(name)
  @name = name
  @species = "human"
  @@owners << self
  @pets = {dogs: [], cats: []}
  end


 def dogs
  self.pets[:dogs]
 end

 def cats 
 self.pets[:cats]
 end


 def self.all
  @@owners
 end

 def self.reset_all
  self.all.clear
 end

 def self.count
  self.all.count
 end

 def say_species
  "I am a #{@species}."
 end


 def buy_cat(name)
  cat = Cat.new(name,self)
 
 end

 def buy_dog(name)
  dog = Dog.new(name,self)
 
 end

 def walk_dogs
  pets[:dogs].each do |dog|
    dog.mood = "happy"
   end
  end 

 def play_with_cats
  pets[:cats].each do |cat|
    cat.mood = "happy"
   end
 end

 def feed_cats
  pets.each do |species, animals|
  animals.each do |animal|
    animal.mood = "happy"
    end
  end
end

def sell_pets 
  
  @pets.collect do |species, animals|
    animals.each do |pet|
      pet.mood = "nervous"
    pet.owner = nil
    end

  
  end
  self.pets = {dogs: [], cats: []}
end


  
   
  def list_pets
  "I have #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
 

end
 
 



