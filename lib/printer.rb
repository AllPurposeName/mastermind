require 'colorize'

class Printer

  def mm
    "#{"M".red}#{"A".red}#{"S".red}#{"T".red}#{"E".red}#{"R".red}#{"M".light_black}#{"I".light_black}#{"N".light_black}#{"D".light_black}"
  end

  def intro
    "Welcome to DJ's MASTERMIND challenge!

    You are to determine the number and order of four colors:
    #{"Blue".blue}
    #{"Green".green}
    #{"Red".red}
    and #{"Yellow".yellow}

    Good luck. Perhaps we will see who is the true #{mm}!

    Press (#{"p".green})#{"lay".green}, (#{"i".magenta})#{"nstructions".magenta}, or (#{"q".light_black})#{"uit".light_black} to continue."

  end

  def instructions
    "At any time, press \"#{"q".light_black}\" to quit.
Determine your difficulty and follow the prompts to take an appropriately sized guess.
You will be guessing which colors fall into which positions.
The game will give you hints back, but it is up to you to solve
the secret code.

Enter your answers in this format: gbgr

Do not include spaces or other characters which don't correspond to
the valid color.

Don't forget, it is extremely shameful to lose at this easy game
and you should probably #{"quit".light_black} before admitting true defeat.

Press (#{"p".green})#{"lay".green}, (#{"i".magenta})#{"nstructions".magenta}, or (#{"q".light_black})#{"uit".light_black} to continue."

end

  def difficulty
    "There are four levels of difficulty in DJ's #{mm}.
Enter #{"e".light_black}(#{"x".light_black})#{"pert".light_black}, #{"in".red}(#{"t".red})#{"ermediate".red}, (#{"n".magenta})#{"ormal".magenta}, or enter anything else (except \"#{"q".red}\") to play as a whiny #{"beginner".cyan}.
For more on difficulties and how they change the game, press (i)nstructions"
  end
  def take_first_guess
    "Now, guess which colors are where!"
  end

  def take_guess
    "Try again..."
  end

  def try_again(printables)
    "Your guess included #{printables[0]} of the appropriate colors and #{printables[1]} out of #{printables[2]} colors in the correct position. Your guess count is #{printables[3]}. "
#
#
#
#
#
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

  def goodbye
    "Goodbye and good games"
  end

  def beginner
    "You have chosen... *yawn*... beginner.
You have to guess 4 positions the random sequence from colors

#{"Blue".blue}
#{"Green".green}
#{"Red".red}
and #{"Yellow".yellow}

Good luck. Srs who needs luck on beginner though?
"
  end

  def normal
    "You have chosen normal. Good place to start as any.
    You have to guess 6 positions the random sequence from colors

    #{"Blue".blue}
    #{"Green".green}
    #{"Red".red}
    #{"Yellow".yellow}
    and #{"Magenta".magenta}


    "

  end

  def intermediate
    "You have chosen intermediate. Welcome to the big leagues!
    You have to guess 8 positions the random sequence from colors

    #{"Blue".blue}
    #{"Green".green}
    #{"Red".red}
    #{"Yellow".yellow}
    #{"Magenta".magenta}
    and #{"Cyan".cyan}

    Free hi-fives if you beat this difficulty level!
    "

  end

  def expert
    "Welcome, #{mm}.
    On expert level there are 10 positions in the random sequence.
    It is composed of all the following colours

    #{"Blue".blue}
    #{"Green".green}
    #{"Red".red}
    #{"Yellow".yellow}
    #{"Magenta".magenta}
    #{"Cyan".cyan}
    and lastly #{"Grey".light_black}LIGHT BLACK

    Test your might!
    "

  end

  def instructions_on_difficulty
    "In DJ's #{mm} these are the four difficulty levels:
    #{"Beginner".cyan} --  4 colors with 4 positions and infinite guesses
    #{"Normal".magenta} -- 5 colors with 6 positions and 10 guesses
    #{"Intermediate".red} -- 6 colors with 8 positions and 13 guesses
    #{"Expert".light_black} -- 7 colors with 10 positions and 16 guesses"
  end
end

#   def color_to(guess)
#     colors = ["blue", "green", "red", "yellow", "magenta", "cyan", "light_black"]
#     guess.chars.map do |letter|
#       part_color = colors.each do |color|
#         color.start_with?(letter)
#       end
#      letter.colorize(part_color.join.to_sym)
#     end
#
#   end
