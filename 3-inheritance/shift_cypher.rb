class ShiftCypher
    def self.encode(message, shift)
        message.chars.inject do |memo, ch|
            memo += (ch.ord + shift).chr
        end
    end 

    def self.decode(message, shift)
        message.chars.inject do |memo, ch|
            memo += (ch.ord - shift).chr
        end
    end
end