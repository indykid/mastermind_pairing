class Game
  attr_reader :ai, :current_correct, :current_exact

  WELCOME_MESSAGE = "Welcome to Mastermind!"
  CORRECT_COLOURS_PROMPT = "How many colours are correct?"
  EXACT_COLOURS_PROMPT = "How many colours are in the exact position?"

  def initialize(output=$stdout, ai=Ai.new)
    @output = output
    @ai = ai
  end

  def start
    display(WELCOME_MESSAGE)
  end

  def play
    display(ai.make_guess)
    display(CORRECT_COLOURS_PROMPT)
    get_number_of_correct_colours
    display(EXACT_COLOURS_PROMPT)
    get_number_of_exact_colours
  end

  def get_number_of_correct_colours
    @current_correct = [0, 1, 2, 3, 4].sample
  end

  def get_number_of_exact_colours
    @current_exact = [0, 1, 2, 3, 4].sample
  end

  private
  def display(message)
    @output.puts(message)
  end
end
