require './lib/mastermind'
require './lib/game_menu'

#prompt play instruction quit
input = ""
mastermind = MasterMind.new
code_generator = CodeGenerator.new
game = GameMenu.new
printer = Printer.new
printer.intro



def run

  message, signal = menu.start

until signal == :stop || signal == :broken
  input = gets.chomp.downcase

  if menu.active?
    message, signal = menu.execute(input)
    if signal == :start_game
      message, signal = game.start
    end
  elsif game.active?
    feedback = game.execute(input)
  else
    :broken
  end

  puts message


puts "Press (p)lay, (i)nstructions, (q)uit"
while input != "q"
  print "> "
  input = gets.chomp.downcase
  puts game.execute(input)
end
puts "Goodbye!"
# mastermind.difficulty(input)


# Play, Instructions, Quit
# if quit, quit
# if instructions, give instructions, loop back
# if play ask for difficulty: Expert, Intermediate, Normal, Beginner


# pass difficulty to mastermind which creates secret array
# prompt for guess, and begin game.
