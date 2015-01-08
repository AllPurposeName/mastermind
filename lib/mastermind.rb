require 'pry'
require_relative 'printer'
require_relative 'code_generator'
class MasterMind
attr_accessor :guess_count

  def initialize
    @printer = Printer.new
    @guess_count = 0
    @code_gen = CodeGenerator.new
  end

  def active?
    @active
  end

  def begin
    @active = true
    return [printer.game_begin, :go]
  end

  def execute(best_guess="gggg")
    while input != "q" || @game_over == false
    if code.valid? == false
      @printer.invalid_length
    end
    if best_guess == @secret; @game_over = true; @printer.game_over_win
    else @guess_count += 1
    end
    printables = [correct_colors, correct_reference, @character_max, @guess_count, @max_guess]
    # binding.pry
    return @printer.try_again(printables)
    # return answer += " and guess count is #{@guess_count}" + correct_colors + correct_reference

  end

  # def execute(input)
  #
  #   if input == secret
  #     "You win!"
  #   else
  #     "Guess again!"
  #   end
  # end

  def guess_count
    @guess_count != 1
  end

end



  # x initialize guess count
  # x creates secret from array random
  # x sample out each letter then join
  # x determine difficulty from user input and adjust accordingly
  # receive user input
  # pass input to evaluator to check against secret
  # return info and receive more user input
  #


  # secret algorhythm
  # gets >> evaluator
