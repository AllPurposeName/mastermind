# evaluate if input is legit as input
# evaluate legit input against secret
# increase guess count and push to printer/mastermind
require 'pry'

class Evaluator
attr_accessor :secret
  def initialize
    @secret = "bgry"
    @guess_count = 0
  end


  def valid?
    #.length check?
    valid_letters = ["b", "g", "r", "y"]
    tally = @best_guess.chars.count do |letter|
      valid_letters.include?(letter)
    end
    if tally == 4
      true
    end
  end

  def check_against(best_guess="gggg")
    @best_guess = best_guess
    if valid? != true
      return "invalid input"
    end
    if @best_guess == @secret; return answer = "correct"; #@game_status = over_win move before correct
    else @guess_count += 1; answer = "incorrect"
    end
    return answer += " and guess count is #{@guess_count}"
  end

end
