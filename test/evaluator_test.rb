require 'minitest/autorun'
require 'minitest/pride'
require './lib/code_generator'

class CodeGeneratorTest < Minitest::Test

  def valuator
    @valuator
  end

  def setup
    @valuator = CodeGenerator.new
    @valuator.secret = "gbyb"
  end

  def test_it_exists
    assert CodeGeneratorTest
  end

  def test_it_creates_a_secret_array
    test_secret = valuator.create_secret
    assert valuator.check_against(test_secret)
  end

  def test_normal_difficulty_adds_to_secret
    valuator.difficulty("normal")
    test_secret = valuator.create_secret
    assert_equal 6, test_secret.length
  end

  def test_intermediate_difficulty_adds_to_secret
    valuator.difficulty("intermediate")
    test_secret = valuator.create_secret
    assert_equal 8, test_secret.length
  end


  def test_expert_difficulty_adds_to_secret
    valuator.difficulty("expert")
    test_secret = valuator.create_secret
    assert_equal 10, test_secret.length
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

  def test_it_checks_correct_amount_of_colors
    result = valuator.check_against("gbbr")
    assert result.downcase.include?("2 out of 4 correct colors")
  end

  def test_it_checks_correct_reference_against_secret
    result = valuator.check_against("ggbr")
    assert result.downcase.include?("1 out of 4 colors in the correct position")
  end

  def test_difficulty_adds_to_max_guess_count
    valuator.difficulty("intermediate")
    max_guess = valuator.max_guess
    assert_equal 13, max_guess
  end

  def test_difficulty_adds_to_max_guess_count
    valuator.difficulty("expert")
    max_guess = valuator.max_guess
    assert_equal 16, max_guess
  end

  def test_difficulty_adds_to_character_max
    valuator.difficulty("expert")
    max_guess = valuator.max_guess
    assert_equal 10, max_guess
  end


end
