class Radio 
  @@BANDS = ['AM', 'FM']
  @@VOLUME_RANGE = 0..10
  @@VOLUMNE_DEFAULT = 5
  @@FM_RANGE = 88.0...108.0
  @@FM_RANGE_DEFAULT = 95.6
  @@AM_RANGE = 540.0...1600.0
  @@AM_RANGE_DEFAULT = 800.0

  attr_reader :band
  attr_reader :volume
  attr_reader :freq

  def self.am 
    Radio.new('am')
  end 
  
  def self.fm
    Radio.new('fm')
  end

  def initialize(band = 'fm', volume = @@VOLUMNE_DEFAULT, freq = nil) 
    self.band = band
    self.volume = volume
    self.freq = freq || default_freq
  end 

  def volume=(volume)     
    @volume = determine_value_in_range(volume, @@VOLUME_RANGE)
  end 

  def freq=(freq)
    @freq = determine_value_in_range(freq, freq_range)
  end

  def to_s
    "Station: #{@band.upcase} #{@freq}, Volume: #{@volume}"
  end

  def freq_range
    'AM' == band.upcase ? @@AM_RANGE : @@FM_RANGE
  end

private 
  def band=(band)
    raise 'Invalid band' unless @@BANDS.find band.upcase
    @band = band
  end

  def determine_value_in_range(value, minmax) 
    return minmax.first if value < minmax.first
    return minmax.end if value > minmax.end
    value
  end 

  def default_freq
    @band == 'AM' ? @@AM_RANGE_DEFAULT : @@FM_RANGE_DEFAULT
  end
end 