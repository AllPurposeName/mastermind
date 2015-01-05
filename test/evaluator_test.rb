require 'minitest/autorun'
require 'minitest/pride'
require './lib/evaluator'

class EvaluatorTest < Minitest::Test

  def valuator
    @valuator
  end

  def secret
    @secret
  end

  def setup
    @valuator = Evaluator.new
    @secret = "gbyb"
  end

  def test_it_exists
    assert EvaluatorTest
  end

  def test_it_evaluates_the_secret_as_true
    result = valuator.check_against("gbyb")
    assert result.downcase.include?("correct")
  end

  def test_it_evalutates_the_wrong_answer_false
    result = valuator.check_against("gbyr")
    assert result.downcase.include?("incorrect")
  end

  def test_it_invalidates_non_uniform_answer
    result = valuator.check_against("heyo")
    assert result.downcase.include?("invalid")
    # assert_equal 0, @guess_count
  end

  def test_it_increases_guess_count
    result = valuator.check_against("gbyr")
    assert result.downcase.include?("guess count is 1")
  end

end
