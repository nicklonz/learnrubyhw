#ARGV contains the arguments passed to the script one per element
filename = ARGV.first
# make prompt
prompt = "> "

txt = File.open(filename)
# use txt function
puts "Here's your file: #{filename}"
puts txt.read()

puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()