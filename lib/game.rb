require 'code_marker'

class Game
  attr_reader :ai, :current_correct, :current_exact

  WELCOME_MESSAGE = "Welcome to Mastermind!"
  CORRECT_COLOURS_PROMPT = "How many colours are correct?"
  EXACT_COLOURS_PROMPT = "How many colours are in the exact position?"

  def initialize(output=$stdout, ai=Ai.new)
    @output = output
    @ai = ai
    @guesses = []
  end

  def start
    display(WELCOME_MESSAGE)
    play
  end

  def play
    display(get_guess_from_ai)
    display(CORRECT_COLOURS_PROMPT)
    get_number_of_correct_colours
    display(EXACT_COLOURS_PROMPT)
    get_number_of_exact_colours
  end

  def get_number_of_correct_colours
    @current_correct = CodeMarker.score_guess_for_correct_colours
  end

  def get_number_of_exact_colours
    @current_exact = CodeMarker.score_guess_for_exact_colours
  end

  def number_of_guesses
    @guesses.length
  end

  def get_guess_from_ai
    guess = ai.make_guess
    @guesses << guess
    guess
  end
  private
  def display(message)
    @output.puts(message)
  end
end
