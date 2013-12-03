puts ""
puts "Welcome to Doors - the Game of Glory or Doom!"
puts ""
puts "What's your name?"
user = gets.chomp.capitalize
puts ""
puts "Hello #{user}. I'm your Guide"
puts ""
puts "The rules are quite simple." 
puts "You must complete a series of tasks to win."
puts ""
puts "Good Luck #{user}!"
puts ""
puts "Here goes: "
sleep 1

def prompt()
  print "> "
end

def green_room()
  puts "This room is full of pickles.  How many do you take?"

  prompt; next_move = gets.chomp 
  if next_move.include? "0" or next_move.include? "1"
    how_much = next_move.to_i()
  else
    dead("You greedy bastard! But you made it out alive!")
  end

  if how_much < 12
    puts "Nice, you're not greedy, you win #{user}!"
    Process.exit(0)
  else
    dead("You greedy bastard #{user}!")
  end
end

def one_room()
  puts "There is a wizard here."
  puts "The wizard is sleeping."
  puts "The wizard is in front of the door."
  puts "How are you going to move the wizard?"
  puts "Try to make noise, tickle him, or hit him and then open door."
  wizard_moved = false

  while true
    prompt; next_move = gets.chomp

    if next_move == "make noise"
      dead("The wizard wakes up and casts a spell on you!")
    elsif next_move == "tickle him" and not wizard_moved
      puts "The wizard has moved from the door. You can go through it now."
      wizard_moved = true
    elsif next_move == "hit him" and wizard_moved
      dead("The wizard gets pissed and turns you into stone!")
    elsif next_move == "open door" and wizard_moved
      green_room()
    else
      puts "Not a valid response."
    end
  end
end

def two_room()
  puts "Here you enter to see a sleeping giant."
  puts "He looks at you with disdain and anger."
  puts "Do you make a run for it or fight?"

  prompt; next_move = gets.chomp

  if next_move.include? "run"
    start()
  elsif next_move.include? "fight"
    dead("Well he kicked your ass!")
  else
    two_room()
  end
end

def dead(why)
  puts "#{why} Great job!"
  Process.exit(0)
end

def start()
  puts "You enter a dark room."
  puts "There are doors number 1 thru 3."
  puts "Which one do you take?"

  prompt; next_move = gets.chomp

  if next_move == "1"
    one_room()
  elsif next_move == "3"
    two_room()
  else
    dead("You realize that the room you enter it to sell you a time share...in eternity!")
  end
end

start()
