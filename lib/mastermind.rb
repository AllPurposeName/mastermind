require 'pry'
require_relative 'evaluator'
require_relative 'printer'
require_relative 'code_generator'
class MasterMind
attr_accessor :guess_count

  def initialize
    @guess_count = 0
  end

  def execute(input)

    if input == secret
      "You win!"
    else
      "Guess again!"
    end
  end

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
