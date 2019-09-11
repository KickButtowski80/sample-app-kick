
#  def my_method &my_block
#     p "I am at the beigning of the method"
    
#     my_block.call
#     p "I am at the end of the method"
#  end


#  my_method do 
#     p "I am in the block now"
#  end

#  my_method do
#     p "I am another block I guess"
#  end

# def give &my_block
#     my_block.call "2 turtle doves", "1 cat"
# end

# yield is as same as my_block.call 
# def give
#     yield "2 turtule doves", "1 cat"    
# end


# give do |pre1, pre2| 
#     puts "My method gave to me ..."
#     p pre1, pre2
# end

# def take_this
#     yield "present"
# end

# take_this {|thing| p "braces block got #{thing}"}

# def each
#     index = 0
#     while index < self.length
#         yield self[index]
#         index += 1
#     end
# end    


# [1,2,3].each { |p| puts p}

# def pig_latin words
#     original_length = 0
#     new_length = 0 
#     words.each do |word|
#         puts "Original word: #{word}"
#         original_length += word.length
#         letters = word.chars
#         first_letter = letters.shift 
#         new_word = "#{letters.join}#{first_letter}ay"
#         puts "Pig Latin word: #{new_word}"
#         new_length += new_word.length
#     end
# puts "Total original length: #{original_length }"
# puts "Total Pig Latin length: #{new_length}"
   
# end
#     my_words = ["blocks", "totally", "rock"]
#     pig_latin my_words

#     require 'net/http'
# Net::HTTP.start( 'www.ruby-lang.org', 80 ) do |http|
#   print( http.get( '/en/about/license.txt' ).body )
# end

# plus = Proc.new do |x,y|
#   puts "#{x+y}"
# end

# plus.call 2,3

# def doSelfImportantly someProc , name
#   puts 'Everybody just HOLD ON! I have something to do...'
#   someProc.call name
#   p 'Ok everyone , I\'m done. Go on with what you were doing.'
# end

# sayHello = Proc.new do |name|
#   puts " hello #{name}"
   
# end

# sayGoodbye = Proc.new do |name|
#   puts %Q{
#     goodbye #{name}
#   }
# end

# doSelfImportantly(sayHello,"Izak")
# doSelfImportantly(sayGoodbye,"Izak")

# def maybeDo someProc
#   rand = rand 2 
#   puts rand
#   if rand == 0
#     someProc.call
#   end
# end

# def twiceDo someProc
#   someProc.call
#   someProc.call
# end

# wink = Proc.new do
#   puts '<wink>'
# end

# glance = Proc.new do
#   puts '<glance>'
# end

# maybeDo wink
# maybeDo glance
# twiceDo wink
# twiceDo glance

def doUntilFalse firstInput, someProc
  
  input = firstInput
  output = firstInput

  while output
    input = output
    output = someProc.call input
    
  end
end

buildArrayOfSqures = Proc.new do |array|
  p array 
  lastNumber = array.last
  if lastNumber <=  0
    false 
  else
    array.pop
    array.push lastNumber * lastNumber
    array.push lastNumber - 1
  end
end
 
puts doUntilFalse([5],buildArrayOfSqures)