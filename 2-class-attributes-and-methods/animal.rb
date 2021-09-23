class Animal
  @@total_animals = 0
  @@current_animals = []

  attr_accessor :noise
  attr_accessor :colour

  def initialize(options = {}) 
    @noise = options[:noise] || 'Grrr!'
    @colour = options[:colour] || 'White'
    @@total_animals += 1
    @@current_animals << self   # instance of Animal
  end

  def self.types
    ['Mammal','Insect','Amphibian']
  end

  def self.total_animals
    @@total_animals
  end
end