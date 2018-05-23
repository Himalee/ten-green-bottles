require "verses"

describe Verses do

  before(:each) do
    @bottles = Verses.new
  end

  context "display verse" do
    it "displays regular verse" do
      expect(@bottles.verse_type(10)).to eql("10 green bottles hanging on the wall\n" +
        "10 green bottles hanging on the wall\n" +
        "And if 1 green bottle should accidentally fall,\n" +
        "There'll be 9 green bottles hanging on the wall.")
      end

      it "displays verse when 2 are bottles left" do
        expect(@bottles.verse_type(2)).to include("2 green bottles", "1 green bottle")
      end

      it "displays verse when 1 bottle is left" do
        expect(@bottles.verse_type(1)).to include("1 green bottle", "no more bottles")
      end

      it "displays verse with 10 bottles" do
        expect(@bottles.verse_type(10)).to include("10 green bottles", "9 green bottles")
      end

      it "displays verse with 9 bottles" do
        expect(@bottles.verse_type(9)).to include("9 green bottles", "8 green bottles")
      end

      it "displays verse with 3 bottles" do
        expect(@bottles.verse_type(3)).to include("3 green bottles", "2 green bottles")
      end
    end
  end
