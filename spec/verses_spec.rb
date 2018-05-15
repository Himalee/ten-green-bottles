require "verses"

describe Verses do

  context "display verse" do

    it "displays regular verse" do
      bottles = Verses.new
      expect(bottles.verse(10)).to eql("10 green bottles hanging on the wall\n" +
        "10 green bottles hanging on the wall\n" +
        "And if 1 green bottle should accidentally fall,\n" +
        "There'll be 9 green bottles hanging on the wall.")
      end

      it "displays verse when 2 are bottles left" do
        bottles = Verses.new
        expect(bottles.verse(2)).to include("2 green bottles", "1 green bottle")
      end

      it "displays verse when 1 bottle is left" do
        bottles = Verses.new
        expect(bottles.verse(1)).to include("1 green bottle", "no more bottles")
      end

      it "displays verse with 10 bottles" do
        bottles = Verses.new
        expect(bottles.verse(10)).to include("10 green bottles", "9 green bottles")
      end

      it "displays verse with 9 bottles" do
        bottles = Verses.new
        expect(bottles.verse(9)).to include("9 green bottles", "8 green bottles")
      end

      it "displays verse with 3 bottles" do
        bottles = Verses.new
        expect(bottles.verse(3)).to include("3 green bottles", "2 green bottles")
      end
    end
  end
