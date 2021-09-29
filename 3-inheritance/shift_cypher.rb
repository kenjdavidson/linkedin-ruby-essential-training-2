class ShiftCypher
    @@upcased = [*'A'..'Z']
    @@downcased = [*'a'..'z']

    def self.encode(message, shift = 3)
        message.chars.inject do |memo, ch|
            memo += cypher(ch, shift)
        end
    end 

    def self.decode(message, shift = 3)
        message.chars.inject do |memo, ch|
            memo += cypher(ch, shift * -1)
        end
    end

private 

    def self.cypher(char, shift)
        if @@upcased.include? char 
            idx = @@upcased.index char 
            @@upcased[(idx + shift).modulo(@@upcased.length)]
        elsif @@downcased.include? char
            idx = @@downcased.index char 
            @@downcased[(idx + shift).modulo(@@downcased.length)]
        else 
            char
        end 
    end
end