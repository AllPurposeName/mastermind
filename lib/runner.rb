require './lib/mastermind'
require './lib/game_menu'

#prompt play instruction quit
input = ""
@mastermind = MasterMind.new
@code_generator = CodeGenerator.new
@game_menu = GameMenu.new
printer = Printer.new


def run

  message, signal = @game_menu.begin
  puts message

until signal == :stop || signal == :broken

  if @game_menu.active?
  input = gets.chomp.downcase
    message, signal = @game_menu.execute(input)
    puts message
    while signal == :select_difficulty
      input = gets.chomp.downcase
      message, signal = @game_menu.difficulties(input)
      puts message
      # @code_generator.difficulty signal
      if signal == :start_game
        message, signal = @game_menu.begin
      end
      if signal == :win
        #go back to menu
      end
      if signal == :select_difficulty
        input = gets.chomp.downcase
      end
    end
  elsif @mastermind.active?
    feedback = @mastermind.execute(input)
  else
    :broken
  end
end
end
  # puts message

#
# puts "Press (p)lay, (i)nstructions, (q)uit"
# while input != "q"
#   print "> "
#   input = gets.chomp.downcase
#   puts game.execute(input)
# end
# puts "Goodbye!"
# @mastermind.difficulty(input)


# Play, Instructions, Quit
# if quit, quit
# if instructions, give instructions, loop back
# if play ask for difficulty: Expert, Intermediate, Normal, Beginner


# pass difficulty to @mastermind which creates secret array
# prompt for guess, and begin game.
run
