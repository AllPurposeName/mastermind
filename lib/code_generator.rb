# require_relative 'mastermind'
class CodeGenerator
  attr_accessor :valid_letters, :secret

  def initialize
    @valid_letters = ["b", "g", "r", "y"]
    @secret = []
  end

  def difficulty(difficulty="beginner")
    case difficulty;
      when "expert"; @valid_letters.push("o", "c", "p")#; @max_guess += whatever
      when "intermediate"; @valid_letters.push("o", "p")
      when "normal"; @valid_letters << "o"
    end
  end

  def create_secret
    range_max = @valid_letters.count
    newest_array = [@valid_letters.join] * range_max
    @secret = newest_array.map { |group| group.chars.sample }.join
  end
# code = CodeGenerator.new
# code.difficulty("normal")
# puts @secret
end
