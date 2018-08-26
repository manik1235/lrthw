first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "What else would you like to say? "
say = STDIN.gets.chomp
say2 = $stdin.gets.chomp
puts say
puts say2
