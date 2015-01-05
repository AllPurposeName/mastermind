require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'
require './lib/evaluator'

class MastermindTest < Minitest::Test

  def mm
    @mm
  end

  def setup
    @mm = Mastermind.new
  end

  def test_it_exists
    assert MastermindTest
  end

  def test_it_initializes_the_guesses
    result = @mm.guess_count
    assert result
  end

  def test_it_creates_a_secret_array
    validator = Evaluator.new
    test_secret = @mm.create_secret
    assert validator.check_against(test_secret)
  end

  def test_difficulties_add_to_secret
    @mm.difficulty("expert")
    test_secret = @mm.create_secret
    assert_equal 7, test_secret.length
  end

  def test_array_is_random

  end

  def test_it_can_receive_user_input

  end

  def test_it_can_pass_to_evaluator

  end


end
