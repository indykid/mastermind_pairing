require 'ai'
describe Ai do
  describe "#make_guess" do
    it "returns a string with 4 letters" do
      computer = Ai.new
      
      expect(computer.make_guess).to eq("RRRR")
    end

  end
end
