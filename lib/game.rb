class Game
  WELCOME_MESSAGE = "Welcome to Mastermind!"
  def initialize(output)
    @output = output
  end
  def start
    @output.puts(WELCOME_MESSAGE)
  end
end
