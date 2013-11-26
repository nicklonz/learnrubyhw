# Sample Ruby
# By NPL

puts "What's your name? " 
name = gets.chomp.capitalize
puts "Hello #{name}, what state do you live in? "
state = gets.chomp.upcase
puts "#{state} is a wonderful place #{name}!"
puts "What is your street address #{name}? "
address = gets.chomp.upcase
puts "What city/town/village do you live in #{state} #{name}?"
city = gets.chomp.upcase
puts "One more thing #{name}, what is your Zip code?"
zipcode = gets.chomp
puts "OK, great #{name}. Your maling address is: "
puts ""
puts "#{name}"
puts "#{address}"
puts "#{city}, #{state} #{zipcode}"