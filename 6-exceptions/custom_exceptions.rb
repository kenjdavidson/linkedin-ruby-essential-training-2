#!/usr/bin/env ruby

# Pick one of the challenge projects

require 'date'

DAYS = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday']

class InvalidBirthdateFormatError
  def initialize(birthday)
    @birthday = birthday
  end
end

def display_birthday_info(birthday_string = "")
  throw InvalidBirthdateFormatError.new(birthday_string) unless birthday_string.match?(/[0-9]{4}\/[0-9]{2}\/[0-9]{2}/)

  year,month,day = birthday_string.split('/')
  birthdate = DateTime.new(year.to_i, month.to_i, day.to_i)

  puts "You were born on a #{DAYS[birthdate.wday]}."
  puts "It was the #{birthdate.yday} day of the year."
  puts "It was the #{birthdate.cweek} week of the year."
  puts birthdate.leap? ? "It was a leap year" : "It was not a leap year"
end 

print "Enter your birthday (yyyy/mm/dd): "
birthday_string = gets.chomp
display_birthday_info(birthday_string)
