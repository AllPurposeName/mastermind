require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_menu'
require './lib/printer'

class GameMenutest < Minitest::Test

  def setup
    @menu = GameMenu.new
    @printer = Printer.new
  end

  def test_it_quits
    @menu.begin
    feedback = @menu.execute("q")
    message = feedback[0]
    signal = feedback[1]
    assert_equal :stop, signal
  end

  def test_it_gives_instructions
    @menu.begin
    feedback = @menu.execute("i")
    message = feedback[0]
    signal = feedback[1]
    assert_equal :go, signal
    assert message.downcase.include?("at any time")
  end

  def test_play_moves_on_to_difficulty
    @menu.begin
    feedback = @menu.execute("p")
    message = feedback[0]
    signal = feedback[1]
    assert_equal :select_difficulty, signal
    refute @menu.active?
  end

  def test_it_can_quit_after_instructions
    @menu.begin
    feedback = @menu.execute("i")
    feedback = @menu.execute("q")
    message = feedback[0]
    signal = feedback[1]
    assert_equal :stop, signal
  end

  def test_it_can_set_difficulty_as_expert
    message, signal = @menu.difficulties("x")
    assert_equal @printer.expert, message
    assert_equal :expert, signal
  end

  def test_it_can_set_difficulty_as_intermediate
    message, signal = @menu.difficulties("t")
    assert_equal @printer.intermediate, message
    assert_equal :intermediate, signal
  end

  def test_it_can_set_difficulty_as_normal
    message, signal = @menu.difficulties("n")
    assert_equal @printer.normal, message
    assert_equal :normal, signal
  end

  def test_it_can_check_instructions_in_difficulties_menu
    message, signal = @menu.difficulties("i")
    assert_equal @printer.instructions_on_difficulty, message
    assert_equal :select_difficulty, signal
  end

  def test_it_sets_difficulty_as_beginner_at_default
    message, signal = @menu.difficulties("houdini is no beginner")
    assert_equal @printer.beginner, message
    assert_equal :beginner, signal
  end


end
