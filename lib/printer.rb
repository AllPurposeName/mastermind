class Printer

  def intro
    "Welcome to DJ's MASTERMIND challenge!

    You are to determine the number and order of four colors:
    Blue
    Green
    Red
    and Yellow

    Good luck. Perhaps we will see who is the true MASTERMIND!"
  end

  def take_first_guess
    "Now, guess which colors are where!"
  end

  def take_guess
    "Try again..."
  end

  def try_again
    "Your guess included #{"{}number_of_correct_colors"} of the correct colors
and #{"number_of_correct_positions"} colors in the correct position."
  end

  def guesses_left
    "Your guess total is up to #{"guess total"}.
Only #{"guesses_remaing"} left."
  end

  def game_over_lose
    "You ran out of guesses. Keep your chin up and always remember:

losing is fun."
  end

  def game_over_win
    "CONGRATULATIONS! It seems you have conquered the puzzle afterall.

Prepare to be a huge dork and start calling yourself the MASTERMIND!"
  end

  def play_again_lose
    "Buuuut perhaps you would like to regain your dignity and try again?"
  end

  def play_again_win
    "Well, MASTERMIND, would you like to prove yourself further
and gain unprecidented bragging rights?"
  end

gsend
