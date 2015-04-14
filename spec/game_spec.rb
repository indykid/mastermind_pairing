require 'game'
describe Game do
  it "displays welcome message" do
    output = StringIO.new
    game = Game.new(output)
    game.start
    expect(output.string).to start_with(Game::WELCOME_MESSAGE)
  end
end
