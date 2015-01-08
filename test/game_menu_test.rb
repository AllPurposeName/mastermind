require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_menu'

class GameMenutest < Minitest::Test

  def setup
    @menu = GameMenu.new
  end

  def test_it_quits
    menu.start
    feedback = menu.execute("q")
    message = feedback[0]
    signal = feedback[1]
    assert_equal :stop, signal
  end

  def test_it_gives_instructions
    menu.start
    feedback = menu.execute("i")
    message = feedback[0]
    signal = feedback[1]
    assert_equal :go, signal
    assert_equal message.downcase.include?("at any time")
  end

  def test_it_starts_a_game
    menu.start
    feedback = menu.execute("p")
    message = feedback[0]
    signal = feedback[1]
    assert_equal :start_game, signal
    refute menu.active?

  end

  def test_it_can_quit_after_instructions
    menu.start
    feedback = menu.execute("i")
    feedback = menu.execute("q")
    message = feedback[0]
    signal = feedback[1]
    assert_equal :stop, signal

  end



  end

end
