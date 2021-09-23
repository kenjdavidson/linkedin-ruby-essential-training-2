require_relative '../2-class-attributes-and-methods/animal'

class Pig < Animal
    def initialize(colour = 'Pink')
        super(noise: 'Oink!!', colour: colour)
    end
end