require 'game'

describe Game do
  class FakeAi
    def make_guess
      "RRRR"
    end
  end

  let(:output) { StringIO.new }
  let(:fakeAi) { FakeAi.new }
  let(:game) { Game.new(output, fakeAi) }

  describe "#start" do
    it "displays welcome message" do
      game.start
      expect(output.string).to start_with(Game::WELCOME_MESSAGE)
    end

    it "calls'play' a maximum of 10 times" do
      expect(game.number_of_guesses).to eq(0)
      game.start
      expect(game.number_of_guesses).to eq(10)
    end
  end

  it "has Ai player" do
    expect(game.ai).to be
  end

  describe "#get_number_of_correct_colours" do
    it "returns a mark between 0 and 4" do
      number_of_correct_guesses = game.get_number_of_correct_colours
      expect([0, 1, 2, 3, 4]).to include(number_of_correct_guesses)
    end
  end

  describe "#get_number_of_exact_colours" do
    it "returns a mark between 0 and 4" do
      number_of_exact_guesses = game.get_number_of_exact_colours
      expect([0, 1, 2, 3, 4]).to include(number_of_exact_guesses)
    end
  end

  describe "#play" do
    it "displays the guess from Ai" do
      game.play
      expect(output.string).to include(fakeAi.make_guess) 
    end

    it "displays prompt for number of correct colours guessed" do
      game.play
      expect(output.string).to include(Game::CORRECT_COLOURS_PROMPT)
    end

    it "gets number of correct matches" do
      expect(game.current_correct).to be(nil)
      game.play
      expect(game.current_correct).to be_a(Fixnum)
    end

    it "displays prompt for number of exact colours guessed" do
      game.play
      expect(output.string).to include(Game::EXACT_COLOURS_PROMPT)
    end

    it "gets number of exact matches" do
      expect(game.current_exact).to be(nil)
      game.play
      expect(game.current_exact).to be_a(Fixnum)
    end
  end

end
