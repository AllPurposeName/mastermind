# # evaluate if input is legit as input
# # evaluate legit input against secret
# # increase guess count and push to printer/mastermind
# require_relative 'runner'
# require 'pry'
#
# class Evaluator
# attr_accessor :secret
#   def initialize(code_generator)
#     @secret = ''
#     @guess_count = 0
#     @code_generator = code_generator
#   end
#
#   # def fetch_secret
#   #   @secret = code_generator.secret
#   # end
#
#   def valid?
#     #.length check?
#     valid_letters = code_generator.valid_letters
#     tally = @best_guess.chars.count do |letter|
#       valid_letters.include?(letter)
#     end
#     if tally == valid_letters.count
#       true
#     end
#   end
#
#   def check_against(best_guess="gggg")
#     @best_guess = best_guess
#     if valid? != true
#       return "invalid input"
#     end
#     if @best_guess == @secret; return answer = "correct"; #@game_status = over_win move before correct
#     else @guess_count += 1; answer = "incorrect"
#     end
#     return answer += " and guess count is #{@guess_count}"
#   end
#
# end
