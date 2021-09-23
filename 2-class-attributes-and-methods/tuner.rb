class Tuner 
   @@FREQUENCIES = [:fm, :am]
   @@FM_FREQUENCY_RANGE = 88.0...108.0
   @@FM_FREQUENCY_DEFAULT = 95.2
   @@AM_FREQUENCY_RANGE = 540.0...1600.0
   @@AM_FREQUENCY_DEFAULT = 800.0

   attr_reader :band
   attr_reader :freq

   def initialize(band = :fm, freq = nil)
      @band = @@FREQUENCIES.find(band) ? band : :fm 
      self.freq = freq || freq_default
   end

   def freq=(freq)
      @freq = determine_value_in_range(freq, freq_range)
   end

   def freq_range 
      :fm == @band ? @@FM_FREQUENCY_RANGE : @@AM_FREQUENCY_RANGE
   end

private 

   def freq_default
      :fm == @band ? @@FM_FREQUENCY_DEFAULT : @@AM_FREQUENCY_DEFAULT
   end 

   def determine_value_in_range(value, minmax) 
      return minmax.first if value < minmax.first
      return minmax.end if value > minmax.end
      value
   end 
end