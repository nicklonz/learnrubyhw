i = 0
numbers = []

while i < 9 
	puts "At the top i is #{i}"
	numbers.push(i)

	i = i + 1
	puts "Numbers now: #{numbers}"
	puts "At the bottomm i is #{i}"
end

if i = 9 
	puts "Loop is completed!"
end

puts "The numbers: "

for num in numbers
	puts num
end