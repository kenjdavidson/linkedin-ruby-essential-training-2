require_relative 'nameable'

class Person
  include Nameable

  def initialize(given, surname)
    self.first_name = given
    self.last_name = surname
  end 
end 