#!/usr/bin/env ruby

require_relative 'secure_radio'
require_relative 'shift_cypher'

radio = Radio.new
puts "Radio playing #{radio.play}"

secure_radio = SecureRadio.new(5)
stream = secure_radio.play

puts "Encrypted stream: #{stream}"
puts "Decrypted stream: #{ShiftCypher.decode(stream, 5)}"

