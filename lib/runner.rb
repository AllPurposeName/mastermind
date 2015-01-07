require './lib/mastermind'


puts "Welcome to Mastermind"
#prompt play instruction quit
input = ""
mastermind = MasterMind.new
code_generator = CodeGenerator.new

while input != "q"
  print "> "
  input = gets.chomp
  puts mastermind.execute(input)
end
puts "Goodbye!"
# mastermind.difficulty(input)


# Play, Instructions, Quit
# if quit, quit
# if instructions, give instructions, loop back
# if play ask for difficulty: Expert, Intermediate, Normal, Beginner


# pass difficulty to mastermind which creates secret array
# prompt for guess, and begin game.
