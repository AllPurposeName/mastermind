# require 'minitest/autorun'
# require 'minitest/pride'
# require './lib/printer'
#
# class PrinterTest < Minitest::Test
#
#   def printer
#     @printer
#   end
#
#   def setup
#     @printer = Printer.new
#   end
#
#   def test_it_exists
#     assert PrinterTest
#   end
#
#   def test_it_has_introduction
#     result = printer.intro
#     assert result.downcase.include?("welcome to dj's")
#   end
#
#   def test_it_has_text_for_users_first_input_prompt
#     result = printer.take_first_guess
#     assert result.downcase.include?("guess which")
#   end
#
#   def test_it_has_regular_prompts_afterwards
#     result = printer.take_guess
#     assert result.downcase.include?("try again")
#   end
#
#   def test_it_relates_hints
#     result = printer.try_again
#     assert result.downcase.include?("your guess")
#   end
#
#   def test_it_explains_guesses_left
#     result = printer.guesses_left
#     assert result.downcase.include?("guess total")
#   end
#
#   def test_it_has_failure_message
#     result = printer.game_over_lose
#     assert result.downcase.include?("losing is fun")
#   end
#
#   def test_it_prompts_to_play_again_after_defeat
#     result = printer.play_again_lose
#     assert result.downcase.include?("regain your dignity")
#   end
#
#   def test_it_has_victory_screen
#     result = printer.game_over_win
#     assert result.downcase.include?("congratulations")
#   end
#
#   def test_it_prompts_to_play_again_after_victory
#     result = printer.play_again_win
#     assert result.downcase.include?("would you like to prove yourself further")
#   end
# end
