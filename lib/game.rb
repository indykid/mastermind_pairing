class Game
  attr_reader :ai
  WELCOME_MESSAGE = "Welcome to Mastermind!"
  def initialize(output=StringIO.new)
    @output = output
    @ai = Ai.new
  end
  def start
    @output.puts(WELCOME_MESSAGE)
  end
end
