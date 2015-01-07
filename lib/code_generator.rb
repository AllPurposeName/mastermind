require 'pry'
# require_relative 'mastermind'
class CodeGenerator
  attr_accessor :valid_letters, :secret, :character_max, :max_guess

  def initialize
    @valid_letters = ["b", "g", "r", "y"]
    @guess_count = 0
    @secret = []
    @max_guess = 0
    @character_max = 4
  end

  def difficulty(difficulty="beginner")
    case difficulty;
    when "expert"
      @valid_letters.push("o", "c", "p"); @character_max += 6; self.create_secret
    when "intermediate"; @valid_letters.push("o", "p"); @character_max += 4; self.create_secret
    when "normal"; @valid_letters << "o"; @character_max += 2; self.create_secret
    end
  end

  def create_secret
    @max_guess = (@character_max + ((@character_max * 0.6).round))
    newest_array = [@valid_letters.join] * @character_max
    @secret = newest_array.map { |group| group.chars.sample }.join
  end

  def valid?
    @best_guess.length == @valid_letters.count
  end

  def correct_reference
    @best_guess
  count = -1
    correct = @best_guess.chars.count do |element|
      count += 1
      @secret.chars[count] == element
    end
  "#{correct} out of #{@valid_letters.count} colors in the correct position"
  # binding.pry
  end

  def correct_colors
    count = 0
    @best_guess.chars.uniq.all? do |element|
# binding.pry
      if @secret.include?(element) then count += 1
      end
    end
    "#{count} out of #{@valid_letters.count} correct colors."

  end

  def check_against(best_guess="gggg")
    @best_guess = best_guess
    # binding.pry
    if valid? == false
      return "invalid input"
    end
    if @best_guess == @secret; return answer = "correct"; #@game_status = over_win move before correct
    else @guess_count += 1; answer = "incorrect"
    end
    return answer += " and guess count is #{@guess_count}" + correct_colors + correct_reference

  end

  def valid?
    tally = @best_guess.chars.count do |letter|
      @valid_letters.include?(letter)
    end
    if tally == valid_letters.count
      true
    else
      false
    end
  end
  #
  # def check_against(best_guess="gggg")
  #   @best_guess = best_guess
  #   if valid? == false
  #     return "invalid input"
  #   end
  #   if @best_guess == @secret; return answer = "correct"; #@game_status = over_win move before correct
  #   else @guess_count += 1; answer = "incorrect"
  #   end
  #   return answer += " and guess count is #{@guess_count}"
  # end

end




# code = CodeGenerator.new
# code.difficulty("expert")
# code.create_secret
# binding.pry
# puts code.secret
