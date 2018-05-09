require "bottles"

describe TenGreenBottles do

  context "display verse" do

    it "displays regular verse" do
      bottles = TenGreenBottles.new(10)
      expect(bottles.verse).to eql("10 green bottles hanging on the wall\n" +
        "10 green bottles hanging on the wall\n" +
        "And if 1 green bottle should accidentally fall,\n" +
        "There'll be 9 green bottles hanging on the wall.")
      end

      it "displays verse when 2 are bottles left" do
        bottles = TenGreenBottles.new(2)
        expect(bottles.verse).to include("2 green bottles", "1 green bottle")
      end

      it "displays verse when 1 bottle is left" do
        bottles = TenGreenBottles.new(1)
        expect(bottles.verse).to include("1 green bottle", "no more bottles")
      end

      it "displays verse with 10 bottles" do
        bottles = TenGreenBottles.new(10)
        expect(bottles.verse).to include("10 green bottles", "9 green bottles")
      end

      it "displays verse with 9 bottles" do
        bottles = TenGreenBottles.new(9)
        expect(bottles.verse).to include("9 green bottles", "8 green bottles")
      end

      it "displays verse with 3 bottles" do
        bottles = TenGreenBottles.new(3)
        expect(bottles.verse).to include("3 green bottles", "2 green bottles")
      end
    end

    context "sings the song" do
      it "sings verse once" do
        bottles = TenGreenBottles.new(1)
        expect(bottles).to receive(:verse).once
        bottles.start

      end

      it "sings verse ten times" do
        bottles = TenGreenBottles.new(10)
        expect(bottles).to receive(:verse).exactly(10).times
        bottles.start
      end
    end
  end
