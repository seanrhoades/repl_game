#awesome work!

puts "\e[H\e[2J"

def space
  puts ' '
end
def win (name)
  space
  puts "Great driving, #{name}."
  space
  puts "             ---------"
  puts "             !YOU WIN!"
  puts "             ---------"
  space
end
def lose (name)
  space
  puts "POLICE: GET OUT OF THE CAR WITH YOUR HANDS IN THE AIR NOW!"
  space
  puts "#{name}, you're being arrested! Drive better next time, if you ever get out of prison."
  space
  puts "             ---------"
  puts "             GAME OVER"
  puts "             ---------"
  space
end
def wrongentry (name)
  space
  puts "SEAN: #{name}, what are you doing? You didn't follow directions! They got us! >:("
  lose name
end
def exits (name)
  exits = gets.chomp.to_i
  case exits
  when 1
    wrongexit name
  when 2
    wrongexit name
  when 3
    space
    puts "SEAN: Exit 3 was it! We're home free with the cash!"
    win name
  else
    wrongentry name
  end
end
def wrongexit (name)
  space
  puts "SEAN: Shit! We took the wrong exit! They got us >:("
  lose name
end
def child (name)
  child = gets.upcase.chomp
  case child
  when "RIGHT"
    space
    puts "SEAN: OH NO! That kid's guts are all over the road! GROSS! And here come the police. We're fucked!"
    lose name
  when "LEFT"
    space
    puts "SEAN: You swerved around the kid! *high five*"
    space
    puts "SEAN: There's the interstate, but there's exits. We've got to decide which one is the correct. (Enter either 1, 2, or 3):"
    exits name
  else
    wrongentry name
  end
end
def roadblock (name)
  roadblock = gets.chomp.to_i
  if roadblock >= 80
    space
    puts "SEAN: Oh no, we blew a tire. We're fucked!"
    lose name
  elsif roadblock >= 60
    space
    puts "SEAN: You just DESTROYED that road block! Great driving!"
    space
    puts "SEAN: We're getting closer to the interstate! But there's a small child crossing the road! You have to swerve around it! Should you go LEFT or RIGHT?"
    child name
  else
    space
    puts "SEAN: You didn't go fast enough! We're stuck! They got us!"
    lose name
  end
end
def northsouth (name)
  northsouth = gets.upcase.chomp
  case northsouth
  when "NORTH"
    roadblocktext name
  when "SOUTH"
    south name
  else
    wrongentry name
  end
end
def roadblocktext (name)
  space
  puts "POLICE: *** THIS IS THE POLICE! THERE'S A ROAD BLOCK UP AHEAD! STOP NOW OR YOU'LL BE IN DEEP SHIT! ***"
  space
  puts "SEAN: Screw the police, #{name}! We've got to plow through it! What speed are you going to hit it at? (Enter a number from 1 - 100):"
  roadblock (name)
end
def beach (name)
  space
  puts "SEAN: #{name}, we're at the beach. We're surrounded! They got us >:("
  lose (name)
end
def south (name)
  space
  puts "SEAN: #{name}, you went the wrong way. They've got us surrounded! >:("
  lose (name)
end
space
puts "       ---------------------"
puts "             THE CHASE"
puts "                by"
puts "           Sean Rhoades"
puts "       ---------------------"
space
puts "        *Rated M for Mature"
space
puts '   -           __'
puts ' --          ~( @\   \ '
puts '---   _________]_[__/_>________ '
puts '     /  ____ \ <>     |  ____  \ '
puts '    =\_/ __ \_\_______|_/ __ \__D '
puts '________(__)_____________(__)____ '
space
puts "Your partner in crime, Sean, just robbed a bank and you're the driver of the getaway car..."
space
puts "You can hear police sirens nearby  -- so it's time to GTFO!"
space
puts "When you're ready, type your name:"
name = gets.capitalize.chomp
space
puts "SEAN: Alright #{name}, Let's roll! We can go EAST or WEST... which way should we go?"
start = gets.upcase.chomp
case start
when "WEST"
  space
  puts "SEAN: That was close! we're on our way. Let's get to the interstate! Should we go NORTH or SOUTH?"
  northsouth name
when "EAST"
  space
  puts "SEAN: We're headed to the beach, we need to get to the interstate! Should we go NORTH, SOUTH, or EAST?"
  east = gets.upcase.chomp
  case east
  when "NORTH"
    space
    puts "SEAN: Alright, we're getting closer to the interstate. Should we go EAST or WEST?"
    northeast = gets.upcase.chomp
    case northeast
    when "EAST"
      beach name
    when "WEST"
      roadblocktext name
    else
      wrongentry name
    end
  when "SOUTH"
    south name
  when "EAST"
    beach name
  else
    wrongentry name
  end
else
  wrongentry name
end
