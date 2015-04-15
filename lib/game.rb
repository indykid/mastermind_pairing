class Game
  attr_reader :ai
  WELCOME_MESSAGE = "Welcome to Mastermind!"
  def initialize(output=$stdout)
    @output = output
    @ai = Ai.new
  end
  def start
    display(WELCOME_MESSAGE)
    display(ai.make_guess)
  end
  private
  def display(message)
    @output.puts(message)
  end
end
