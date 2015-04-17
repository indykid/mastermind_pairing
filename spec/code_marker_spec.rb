require 'code_marker'

describe CodeMarker do

  describe "#score_guess_for_correct_colours" do
    it "returns a fixnum mark" do
      expect(CodeMarker.score_guess_for_correct_colours).to be_a(Fixnum)
    end
  end

  describe "#score_guess_for_exact_colours" do
    it "returns a fixnum mark" do
      expect(CodeMarker.score_guess_for_exact_colours).to be_a(Fixnum)
    end
  end
end
