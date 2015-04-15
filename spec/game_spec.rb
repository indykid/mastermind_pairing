require 'game'
describe Game do
  let(:output) { StringIO.new }
  let(:game) { Game.new(output) }
  it "displays welcome message" do
    game.start
    expect(output.string).to start_with(Game::WELCOME_MESSAGE)
  end
  it "has Ai player" do
    expect(game.ai).to be
  end
  it "displays the guess from Ai" do
    game.start
    expect(output.string).to include("RRRR") 
  end
  it "displays prompt for number of correct colours guessed" do
    game.start
    expect(output.string).to include(Game::CORRECT_COLOURS_PROMPT)
  end
end
