require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'

class MasterMindTest < Minitest::Test

  def mm
    @mm
  end

  def setup
    @mm = MasterMind.new
  end

  def test_it_exists
    assert MasterMindTest
  end

  def test_it_initializes_the_guesses
    result = @mm.guess_count
    assert result
  end

  def test_
    result = @mm.initiate("gbyb", 10)
  end


  def test_it_can_receive_user_input

  end

  def test_it_can_pass_to_evaluator

  end


end
