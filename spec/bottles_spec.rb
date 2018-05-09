require "bottles"

describe TenGreenBottles do

  context "Display verse" do

    it "displays regular verse" do
      bottles = TenGreenBottles.new(10)
      expect(bottles.number_of_bottles).to eql("10 green bottles hanging on the wall
10 green bottles hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be 9 green bottles hanging on the wall.")
    end

    it "displays verse when 2 are bottles left" do
      bottles = TenGreenBottles.new(2)
      expect(bottles.number_of_bottles).to eql("2 green bottles hanging on the wall
2 green bottles hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be 1 green bottle hanging on the wall.")
    end

    it "displays verse when 1 bottle is left" do
      bottles = TenGreenBottles.new(1)
      expect(bottles.number_of_bottles).to eql("1 green bottle hanging on the wall
1 green bottle hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be no more bottles hanging on the wall.")
    end

    it "displays verse with 10 bottles" do
      bottles = TenGreenBottles.new(10)
      expect(bottles.number_of_bottles).to eql("10 green bottles hanging on the wall
10 green bottles hanging on the wall
And if 1 green bottle should accidentally fall,
There'll be 9 green bottles hanging on the wall.")
    end

    it "displays verse with 9 bottles" do
      bottles = TenGreenBottles.new(9)
      expect(bottles.number_of_bottles).to include("9 green bottles", "8 green bottles")
    end

    it "displays verse with 3 bottles" do
      bottles = TenGreenBottles.new(3)
      expect(bottles.number_of_bottles).to include("3 green bottles", "2 green bottles")
    end

  end


end
