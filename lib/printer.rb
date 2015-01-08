class Printer

  def mm
    "#{"M"}#{"A"}#{"S"}#{"T"}#{"E"}#{"R"}#{"M"}#{"I"}#{"N"}#{"D"}\n"
  end

  def intro
    print    "Welcome to DJ's MASTERMIND challenge!

    You are to determine the number and order of four colors:
    #{"Blue"}
    #{"Green"}
    #{"Red"}
    and #{"Yellow"}

    Good luck. Perhaps we will see who is the true #{mm}!"
  end

  def instructions
    "At any time, press \"q\" to quit.
Determine your difficulty and follow the prompts to take an appropriately sized guess.
You will be guessing which colors fall into which positions.
The game will give you hints back, but it is up to you to solve
the secret code.

Enter your answers in this format: gbgr

Do not include spaces or other characters which don't correspond to
the valid color.

Don't forget, it is extremely shameful to lose at this easy game
and you should probably quit before admitting true defeat."
  end

  def take_first_guess
    "Now, guess which colors are where!"
  end

  def take_guess
    "Try again..."
  end

  def try_again(printables)
    "Your guess included #{printables[0]} of the appropriate colors and #{printables[1]} out of #{printables[2]} colors in the correct position. Your guess count is #{printables[3]}. "
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

end
