require "bottles"

describe TenGreenBottles do

  context "Display verse" do
    
    it "displays first verse with 10 bottles" do
      expect(TenGreenBottles.verse(10)).to eql("10 green bottles hanging on the wall
10 green bottles hanging on the wall
And if one green bottle should accidentally fall,
There'll be 9 green bottles hanging on the wall.")
    end
  end

  it "displays all verses" do
    expect(TenGreenBottles.verse(10)).to include("10 green bottles", "9 green")
  end

end
