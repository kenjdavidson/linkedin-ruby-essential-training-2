# Define a new class called ToDoList and mix in Ruby's built in Enumerable module.
# Enumerable can be used by more than Array, Hash, Etc.  In order to do this we must 
# define the `each` method.
#
# def each
#   @items.each {|item| yield(item) }
# end
#
# Also define the append << operator to update items, add it to the front of the list
# instead of the back

class ToDoList
  include Enumerable

  attr_accessor :items

  def initialize(items = [])
    self.items = items.dup
  end

  # Required for the Enumerable mixin
  # https://ruby-doc.org/core-3.0.2/Enumerable.html
  def each 
    @items.each { |item| yield(item) }
  end 

  def <<(new_item)
    # Unshift (originally used prepend successfully)
    @items.unshift(new_item)
  end 
end