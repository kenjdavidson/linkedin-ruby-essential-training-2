class Die
  attr_reader :value, :sides

  def initialize(sides = 6)
    @sides = sides

    roll
  end 

  def roll
    @value = get_random
  end 

private 

  def get_random
    rand(@sides)+1
  end 
end