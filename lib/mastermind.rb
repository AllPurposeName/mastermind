require 'pry'
require_relative 'printer'
require_relative 'code_generator'
class MasterMind
attr_accessor :guess_count

  def initialize
    @printer = Printer.new
    @guess_count = 1
    @code_gen = CodeGenerator.new
    @max_guesses = 0

  end

  def active?
    @active
  end

  def initiate(code, max_guesses)
    @secret_code = code
    @max_guesses = max_guesses
    @signal = :ongoing
    puts @printer.take_first_guess
    while @signal == :ongoing
      @guess_count += 1
      input = gets.chomp.downcase
      if input == 'q'
        break
      elsif guess_maxed?
        [@printer.answer_incorrect_and_out_of_guesses, :game_lost]
      end

      message, @signal = @code_gen.check_against(input, code, max_guesses)
      puts message
      puts @secret_code
      if @signal == :no_guess
        @guess_count -= 1
        @signal = :ongoing
      end
      if input == @secret_code
      @signal = :game_won
      break
      end
    end
    message, signal = game_status
  end

  def game_status
    if loser?
      [@printer.game_lost, :loser]
    elsif winner?
      [@printer.game_won, @printer.play_again_win, :win]
    else
      [@printer.goodbye, :stop]
    end
  end

  def winner?
    @signal == :game_won
  end

  def loser?
    @signal == :game_lost
  end


  def guess_maxed?
    @guess_count == @max_guesses && input != code
  end

end
