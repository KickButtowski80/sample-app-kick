# formatter = "%{first} %{second} %{third} %{fourth}"

# puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
# puts formatter %  {first: "one", second: "two" , third: "three", fourth: "four"}
# puts formatter % {first: "true", second: false, third: true, fourth: false}
# puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# puts formatter % {
#     first: "I had this things. #{'hello'} ",
#     second: "That you could type up right", 
#     third: "But it didn't sing.",
#     fourth: "So I said goodnight"
# }
 
# days = "Mon Tue Wed Thu Fri Sat Sun"
# months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\bAug"

# puts "Here are the days: #{days}"
# puts "Here are the months: #{months}"


# puts %q{
#     Randome stuff is randome
#     just stick with it
#     cuz it is randome
# }

print "Give me some moeny"
money = $stdin.gets.chomp.to_f

money = (money * 10) /100
puts "I gave #{money} back to you"

first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

