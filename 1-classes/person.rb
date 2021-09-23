class Person

  attr_accessor :given_name, :surname

  def initialize(given, surname) 
    @given_name = given
    @surname = surname
  end

  def fullname
    "#{@given_name} #{@surname}"
  end 

  def initial_surname
    "#{get_initial(@given_name)}#{@surname}"
  end

  def say_hello
    "Hello #{fullname}"
  end

private 

  def get_initial(name, punct = '.')
    "#{name.chars.first}#{punct} "
  end 

end