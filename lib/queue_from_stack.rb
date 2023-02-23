require_relative './stack'

# your code here
class MyQueue 
    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end
    
    def add(value)
        until @s2.empty? 
            @s1.push(@s2.pop)
        end
        @s1.push(value)
        until @s1.empty?
            @s2.push(@s1.pop)
        end
    end

    def remove
        @s2.pop
    end

    def peek
        @s2.peek
    end

end