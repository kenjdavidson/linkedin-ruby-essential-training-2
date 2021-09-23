#!/usr/bin/env ruby

require_relative 'dice_set'

puts "Welcome to the Davidson Dice Game"

print "How many dice would you like to roll? : "
number_dice = gets.chomp.to_i

print "How many sides do your die have? : "
number_sides = gets.chomp.to_i

starting_dice = []
number_dice.times { starting_dice << Die.new(number_sides) }

dice_set = DiceSet.new(starting_dice)
dice_set.display

loop do
  print "Roll <Enter> or <Q>uit: "
  command = gets.chomp
  break if command == 'Q' or command == 'q'

  dice_set.roll
  dice_set.display
end
