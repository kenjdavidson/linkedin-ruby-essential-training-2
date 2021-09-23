
require_relative '../2-class-attributes-and-methods/radio'
require_relative 'shift_cypher'

class SecureRadio < Radio

    attr_accessor :encoding

    def initialize(encoding = 10)
        self.encoding = encoding
    end

protected

    def music_stream
        ShiftCypher.encode(super, @encoding)
    end 

end