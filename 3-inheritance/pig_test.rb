#!/usr/bin/env ruby

require_relative '../2-class-attributes-and-methods/animal'
require_relative 'pig'

def animal_is(animal) 
    puts "#{animal.noise} says the #{animal.colour} #{animal.class}"
end

animal = Animal.new
animal_is animal

pig = Pig.new
animal_is pig