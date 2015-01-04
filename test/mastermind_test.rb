require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'

class MastermindTest < Minitest::Test
  def test_it_exists
    assert MastermindTest
  end

  def test_it_wins
    mm = Mastermind.new
    result = mm.execute("BBGB")
    assert result.downcase.include?("win")
  end

  def test_
end
