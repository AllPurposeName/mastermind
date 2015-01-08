require './lib/mastermind'
require './lib/game_menu'

#prompt play instruction quit
input = ""
@mastermind = MasterMind.new
@code_generator = CodeGenerator.new
@game_menu = GameMenu.new
@printer = Printer.new


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
        if signal != :select_difficulty
          secret_code, max_guesses = @code_generator.difficulty(signal)
          signal = :start_game
        end
      end
      if signal == :start_game
        message, signal = @mastermind.initiate(secret_code, max_guesses)
        puts message
      end
      # binding.pry
      if signal == :win
        input = gets.chomp.downcase
        @game_menu.execute(input)
      end

      if signal == :loser
        input = gets.chomp.downcase
        @game_menu.execute(input)
      end
    end
  end
end

run
