require "bottles"

describe TenGreenBottles do

  context "Display verse" do

    it "displays first line of verse" do
      expect(TenGreenBottles.first_lines).to eql("10 green bottles hanging on the wall")
    end

    it "displays first and second line of verse" do
      expect(TenGreenBottles.first_lines).to eql("10 green bottles hanging on the wall")
    end
  end


end
