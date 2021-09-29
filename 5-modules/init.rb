require_relative 'nameable'
require_relative 'person'

ken = Person.new('Ken','Davidson')
puts ken.full_name

require_relative 'to_do_list'

list = ToDoList.new(['dishes','laundry','lawn','nap','beers'])

puts
puts "First: #{list.first}"
puts 
puts "Longest: #{list.find {|item| item.length > 6}}"
puts 
puts "Original list:"
puts  list.map {|item| "> #{item.capitalize}"}

list << "sweep"

puts
puts "Updated list:"
puts  list.map {|item| "> #{item.capitalize}"}

puts
puts "Sorted:"
list.sort.each_with_index do |item, idx|
  puts "#{idx}: #{item}"
end 

puts