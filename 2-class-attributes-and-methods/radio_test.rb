#!/usr/bin/env ruby

require_relative 'radio'
require_relative 'tuner'

radio = Radio.new(5)
puts radio.to_s

radio.volume = 9
radio.tuner.freq = 99.9
puts radio.to_s

radio.switch_band
puts radio.to_s