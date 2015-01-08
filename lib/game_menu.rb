class GameMenu

  def active?
    @active
  end

  def begin
    @active = true
    return [printer.welcome, :go]
  end


  def execute(input)
    case input
    when 'q' ["goodbye", :stop]
    when 'i' [printer.instructions, :go]
    when 'p' @active = false; ["starting a game":start_game]
    end
  end
  # while
# while acceptable_inputs.include?(input) == true
# end
end
