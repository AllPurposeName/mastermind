require './lib/printer'

class GameMenu
  def initialize
    @printer = Printer.new
  end

  def active?
    @active
  end

  def begin
    @active = true
    return [@printer.intro, :go]
  end


  def execute(input)
    case input
    when 'q'; @active = false; [@printer.goodbye, :stop]
    when 'i'; [@printer.instructions, :go]
    when 'p'; @active = false; [@printer.difficulty, :select_difficulty]
    end
  end

  def difficulties(input)
    case input
    when 'q'; @active = false; [@printer.goodbye, :stop]
    when 'x'; [@printer.expert, :expert]
    when 't'; [@printer.intermediate, :intermediate]
    when 'n'; [@printer.normal, :normal]
    when 'i'; [@printer.instructions_on_difficulty, :select_difficulty]
    else [@printer.beginner, :beginner]
    end
  end
end
