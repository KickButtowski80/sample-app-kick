BEGIN { puts "Hi"}
END { puts "I am at the end"}

def hello 
    puts "hello"
end

alias  hello_again hello

hello_again

puts defined? hello_again
puts defined? x

p defined? @x=1
p @x

(0...5).each do |x|
    puts x
end

module Mod
    include Math
    CONST = 1
    def meth
        p "meth"
    end    
end

p Mod.class
p Mod.constants
p Mod.instance_methods

class Alot 
    include Mod
end
 
class Alot_again
    extend Mod
end

alot = Alot.new
alot.meth 

Alot_again.meth
 