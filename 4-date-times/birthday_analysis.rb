#!/usr/bin/env ruby

# Ask a user for year, month and date of their birth
# Tell them the day of week (Thursday)
# Day of the year as number
# Week of year as a number
# Whether it was a leap year

require 'date'

print "Enter your birthday (yyyy/mm/dd): "
birthday = gets.chomp

year,month,day = birthday.split('/')

birthdate = DateTime.new(year.to_i, month.to_i, day.to_i)

DAYS = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday']
puts "You were born on a #{DAYS[birthdate.wday]}."
puts "It was the #{birthdate.yday} day of the year."
puts "It was the #{birthdate.cweek} week of the year."
puts birthdate.leap? ? "It was a leap year" : "It was not a leap year"
