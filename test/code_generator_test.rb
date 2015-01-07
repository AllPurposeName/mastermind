# require 'minitest/autorun'
# require 'minitest/pride'
# require './lib/code_generator'
#
# class CodeGeneratorTest < Minitest::Test
#
#   def mm
#     @code
#   end
#
#   def setup
#     @code = CodeGenerator.new
#   end
#
#   def test_it_creates_a_secret_array
#     validator = Evaluator.new
#     test_secret = @code.create_secret
#     assert validator.check_against(test_secret)
#   end
#
#   def test_difficulties_add_to_secret
#     @code.difficulty("expert")
#     test_secret = @code.create_secret
#     assert_equal 7, test_secret.length
#   end
#
#   def test_array_is_random
#
#   end
#
# end
