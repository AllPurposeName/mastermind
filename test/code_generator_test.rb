require 'minitest/autorun'
require 'minitest/pride'
require './lib/code_generator'
require './lib/printer'

class CodeGeneratorTest < Minitest::Test

  def valuator
    @valuator
  end

  def setup
    @valuator = CodeGenerator.new
    @printer = Printer.new
    @valuator.secret = "gbyb"
    @valuator.character_max = 4
  end

  def test_it_exists
    assert CodeGeneratorTest
  end

  def test_it_creates_a_secret_array
    test_secret = valuator.create_secret
    assert valuator.check_against(test_secret)
  end

  def test_normal_difficulty_adds_to_secret
    valuator.difficulty(:normal)
    test_secret = valuator.create_secret
    assert_equal 6, test_secret.length
  end

  def test_intermediate_difficulty_adds_to_secret
    valuator.difficulty(:intermediate)
    test_secret = valuator.create_secret
    assert_equal 8, test_secret.length
  end


  def test_expert_difficulty_adds_to_secret
    valuator.difficulty(:expert)
    test_secret = valuator.create_secret
    assert_equal 10, test_secret.length
  end

  def test_it_evaluates_the_secret_as_true
    result = valuator.check_against("gbyb", "gbyb")
    assert result
  end

  def test_it_evaluates_the_wrong_answer
    valuator.check_against("gbyr", "gbyb")
    result_1 = valuator.valid_length?
    result_2 = valuator.valid?
    assert result_1
    assert result_2
  end

  def test_it_invalidates_non_uniform_answer
    valuator.check_against("heyo", "gbyb")
    result = valuator.valid?
    refute result
  end

  def test_it_increases_guess_count
    valuator.check_against("gbyr", "gbyb")
    result = valuator.guess_count
    assert_equal 1, result
  end

  def test_it_checks_correct_amount_of_colors
    valuator.check_against("gbbr", "gbyb")
    result = valuator.correct_colors
    assert_equal 2, result
  end

  def test_it_checks_correct_reference_against_secret
    valuator.check_against("ggbr", "gbyb")
    result = valuator.correct_reference
    assert_equal 1, result
  end

  def test_intermediate_difficulty_adds_to_max_guess_count
    valuator.difficulty(:intermediate)
    max_guess = valuator.max_guess
    assert_equal 13, max_guess
  end

  def test_expert_difficulty_adds_to_max_guess_count
    valuator.difficulty(:expert)
    max_guess = valuator.max_guess
    assert_equal 16, max_guess
  end

  def test_normal_difficulty_adds_to_max_guess_count
    valuator.difficulty(:normal)
    max_guess = valuator.max_guess
    assert_equal 10, max_guess
  end

  def test_beginner_difficulty_has_nooby_max_guess_count
    valuator.difficulty("houdini is no beginner")
    max_guess = valuator.max_guess
    assert_equal 100, max_guess
  end

  def test_expert_difficulty_adds_to_character_max
    valuator.difficulty(:expert)
    character_max = valuator.character_max
    assert_equal 10, character_max
  end

  def test_intermediate_difficulty_adds_to_character_max
    valuator.difficulty(:intermediate)
    character_max = valuator.character_max
    assert_equal 8, character_max
  end

  def test_normal_difficulty_adds_to_character_max
    valuator.difficulty(:normal)
    character_max = valuator.character_max
    assert_equal 6, character_max
  end

  def test_beginner_difficulty_does_not_adds_to_character_max
    valuator.difficulty("Houdini is no beginner")
    character_max = valuator.character_max
    assert_equal 4, character_max
  end

end
