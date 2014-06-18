class CLI
  attr_reader :command, :parameters, :turn
  def initialize(turn)
    @command = ""
    @parameters = ""
    @turn = turn
  end

  def start
    puts "Welcome to MASTERMIND \n
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    while command != 'q'
      parts = process_start_input(gets.strip)
      assign_instructions(parts)
      execute_command
    end
    puts "End of Game"
  end

  def process_start_input(input)
    input.slice!(0)
  end

  def assign_instructions(parts)
    if parts [0] == 'p'
      
  end

  def execute_command
    puts "Executing #{command}"
    case command
      when command = 'i'
        print "I will create a sequence of colors that you cannot see.
        You must guess the correct colors in the correct positions to win."
      when command = 'p'
      print "I have generated a beginner sequence with four elements made up of: \n (r)ed, (g)reen, (b)lue, and (y)ellow. \n Use (q)uit at any time to end the game. \n What is your guess?"
      input = process_turn_input(gets.strip)
  end
end
