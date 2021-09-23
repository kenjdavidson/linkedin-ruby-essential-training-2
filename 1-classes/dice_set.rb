require_relative "dice"

class DiceSet
  def initialize(dice = nil)
    @dice = dice || [Die.new, Die.new]
  end

  def roll
    @dice.each {|die| die.roll}

    @dice.collect{|die| die.value}
  end 

  def display
    puts @dice.collect{|die| die.value}.to_s
  end
end