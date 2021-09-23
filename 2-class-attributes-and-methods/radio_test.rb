#!/usr/bin/env ruby

require_relative 'radio'

am_radio = Radio.am
puts am_radio.freq_range

fm_radio = Radio.fm
puts fm_radio.freq_range

puts am_radio.to_s
puts fm_radio.to_s

fm_radio.volume = 11
puts fm_radio.to_s