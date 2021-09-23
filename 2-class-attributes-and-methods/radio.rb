require_relative 'tuner'

class Radio 
  @@VOLUME_RANGE = 0..10
  @@VOLUMNE_DEFAULT = 5

  attr_reader :volume

  def initialize(volume = @@VOLUMNE_DEFAULT, tuners = nil)   
    self.volume = volume

    @tuners = tuners || [Tuner.new(:fm), Tuner.new(:am)]
    @current_tuner = 0    
  end 

  def volume=(volume)     
    @volume = determine_value_in_range(volume, @@VOLUME_RANGE)
  end 

  def tuner
    @tuners[@current_tuner]
  end

  def switch_band
    @current_tuner = (@current_tuner+1).modulo(@tuners.length)
  end

  def to_s
    "Station: #{tuner.band.upcase} #{tuner.freq}, Volume: #{@volume}"
  end

  def play
    music_stream
  end

protected 

  def music_stream
    "Doo bop ba diddy bop ba doo bop!!"
  end 

private 

   def determine_value_in_range(value, minmax) 
      return minmax.first if value < minmax.first
      return minmax.end if value > minmax.end
      value
   end 
end 