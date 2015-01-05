require 'pry'
require_relative 'evaluator'
require_relative 'printer'
class Mastermind
attr_accessor

  def initialize
    @secret = []
    @guess_count = 0
    @valid_letters = ["b", "g", "r", "y"]
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

  def create_secret
    range_max = @valid_letters.permutation.to_a.count - 1
    range_sample = (0..range_max).to_a.sample
    @secret = @valid_letters.permutation.to_a[range_sample].join
  end

  def difficulty(difficulty="beginner")
    case difficulty
    when "expert"; @valid_letters.push("o", "c", "p")#; @max_guess += whatever
    when "intermediate"; @valid_letters.push("o", "p")
    when "normal"; @valid_letters << "o"
    end
    create_secret
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

end
