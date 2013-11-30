# This was a tough and tricky assignment.

# This function will break up words for us.
  def break_words(stuff)
    words = stuff.split(' ')
    words
  end

# Sorts the words.
  def sort_words(words)
    words.sort()
  end

# Prints the first word after popping it off.
  def print_first_word(words)
    word = words.shift()
    puts word
  end

# Prints the last word after popping it off.
  def print_last_word(words)
    word = words.pop()
    puts word
  end

# Takes in a full sentence and returns the sorted words.
  def sort_sentence(sentence)
    words = break_words(sentence)
    sort_words(words)
  end

# Puts the first and last words of the sentence.
  def print_first_and_last(sentence)
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

# Sorts the words then prints the first and last one.
  def print_first_and_last_sorted(sentence)
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end

puts ""
puts ""

puts "Let's practice everything."
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs."

poem = <<MULTI_LINE_STRING
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explantion
\n\t\twhere there is none.
MULTI_LINE_STRING


puts "--------------"
puts poem
puts "--------------"

five = 10 - 2 + 3 - 5
puts "This should be five: #{five}"

def secret_formula(started)
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %s beans, %s jars, and %s crates." % secret_formula(start_point)

puts ""
puts ""

sentence = "All good things come to those who wait."
puts sentence
puts ""

words = break_words(sentence)
sorted_words = sort_words(words)

puts "First word: " 
print_first_word(words)

puts "Last word: "
print_last_word(words)

puts "First words sorted: "
print_first_word(sorted_words)

puts "Last word sorted: "
print_last_word(sorted_words)

puts "Sorted words A to Z: "
print (sorted_words)
puts ""

puts "First and last words: "
print_first_and_last (sentence)

puts "First and last sorted: "
print_first_and_last_sorted (sentence)