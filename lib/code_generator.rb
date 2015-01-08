require 'pry'
require './lib/printer'
class CodeGenerator
  attr_reader :guess_count
  attr_accessor :valid_letters, :secret, :character_max, :max_guess

  def initialize
    @valid_letters = ["b", "g", "r", "y"]
    @guess_count = 0
    @secret = []
    @max_guess = 0
    @character_max = @valid_letters.count
    @printer = Printer.new
  end

  def difficulty(difficulty=:beginner)
    case difficulty;
    when :expert; @valid_letters.push("m", "g", "c"); @character_max += 6; self.create_secret
    when :intermediate; @valid_letters.push("m", "c"); @character_max += 4; self.create_secret
    when :normal; @valid_letters << "m"; @character_max += 2; self.create_secret
    else create_secret(94)
    end
  end

  def create_secret(beginner_help=0)
    @max_guess = (@character_max + ((@character_max * 0.6).round)) + beginner_help
    newest_array = [@valid_letters.join] * @character_max
    [newest_array.map { |group| group.chars.sample }.join, @max_guess]
  end


  def correct_reference
    @best_guess
  ref_count = -1
    correct = @best_guess.chars.count do |element|
      ref_count += 1
      @secret.chars[ref_count] == element
    end
    correct
  end

  def correct_colors
    color_count = 0
    @best_guess.chars.uniq.all? do |element|
      if @secret.include?(element) then color_count += 1
      end
    end
    color_count
  end

  def check_against(best_guess="gggg", secret, max_guesses)
    @max_guess = max_guesses
    @secret = secret
    @best_guess = best_guess
    if valid_length? != true
      return valid_length?
    end
    if valid_letters? == false
      return [@printer.invalid_entry, :no_guess]
    end
    if @best_guess != @secret
      @guess_count += 1
    end
    printables = [correct_colors, correct_reference, @character_max, @guess_count, @max_guess, @best_guess]
    return [@printer.try_again(printables), :ongoing]

  end

  def valid_length?
    if @best_guess.length > @secret.length
      [@printer.too_long, :no_guess]
    elsif @best_guess.length < @secret.length
      [@printer.too_short, :no_guess]
    else
      true
    end
  end

  def valid_letters?
    tally = @best_guess.chars.count do |letter|
      @valid_letters.include?(letter)
    end
    if tally == valid_letters.count
      true
    else
      false
    end
  end

end
