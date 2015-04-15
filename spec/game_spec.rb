require 'game'
describe Game do
  it "displays welcome message" do
    output = StringIO.new
    game = Game.new(output)
    game.start
    expect(output.string).to start_with(Game::WELCOME_MESSAGE)
  end
  it "has Ai player" do
    game = Game.new
    expect(game.ai).to be
  end
  xit "displays the guess from Ai" do
    output = StringIO.new
    game = Game.new(output)
    game.start

  end
end
