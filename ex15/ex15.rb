filename = ARGV.first

txt = open filename

puts "Here's your file #{filename}"
print txt.read

print "Type the filename again:"
file_again = $stdin.gets.chomp

text_again = open(file_again.strip)

print text_again.read

txt.close()
text_again.close()

