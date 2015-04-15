class Game
  attr_reader :ai

  WELCOME_MESSAGE = "Welcome to Mastermind!"
  CORRECT_COLOURS_PROMPT = "How many colours are correct?"

  def initialize(output=$stdout, ai=Ai.new)
    @output = output
    @ai = ai
  end
  def start
    display(WELCOME_MESSAGE)
    display(ai.make_guess)
    display(CORRECT_COLOURS_PROMPT)
  end
  private
  def display(message)
    @output.puts(message)
  end
end
