require "bottles"

describe TenGreenBottles do

  context "Display verse" do

    it "displays regular verse" do
      bottles = TenGreenBottles.new
      expect(bottles.regular_verse).to eql("10 green bottles hanging on the wall
10 green bottles hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be 9 green bottles hanging on the wall.")
    end

    it "displays verse when 2 bottles left" do
      bottles = TenGreenBottles.new
      expect(bottles.singular_verse).to eql("2 green bottles hanging on the wall
2 green bottles hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be 1 green bottle hanging on the wall.")
    end

    it "displays verse when 1 bottle is left" do
      bottles = TenGreenBottles.new
      expect(bottles.final_verse).to eql("1 green bottle hanging on the wall
1 green bottle hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be no more bottles hanging on the wall.")
    end

    it "displays verse with 10 bottles" do
      bottles = TenGreenBottles.new
      expect(bottles.number_of_bottles).to eql("10 green bottles hanging on the wall
10 green bottles hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be 9 green bottles hanging on the wall.")
    end

  end


end
