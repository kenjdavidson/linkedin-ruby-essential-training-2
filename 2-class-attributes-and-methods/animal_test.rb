#!/usr/bin/env ruby

require_relative 'animal'

pig = Animal.new(noise: 'Oink!', colour:'Brown')
horse = Animal.new(noise: 'Nay!', colour: 'Spotted')

puts "The pig is #{pig.colour} and says #{pig.noise}"
puts "The horse is #{horse.colour} and says #{horse.noise}"

puts Animal.total_animals