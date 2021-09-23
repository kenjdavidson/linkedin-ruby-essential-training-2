#!/usr/bin/env ruby

require_relative 'person'

kenneth = Person.new('Kenneth', 'Davidson')
sue = Person.new('Suzanne', 'Davidson')

puts kenneth.object_id
puts sue.object_id

puts kenneth.say_hello
puts sue.say_hello

kenneth.given_name = "KJ"
puts kenneth.say_hello
puts kenneth.initial_surname

#puts kenneth.get_initial("Suzanne")
# 1-classes/person_test.rb:17:in `<main>': private method `get_initial' called for #<Person:0x000055fde27c3d88> (NoMethodError)