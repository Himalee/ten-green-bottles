require "bottles_run"
require "bottles"
require "bottles_user_input"

describe Song do

  context "sings the song" do
    it "sings verse once" do
      verses = TenGreenBottles.new
      bottles = Song.new(verses)
      expect(bottles).to receive(:run).once
      bottles.run(1)
    end

    it "sings ten times" do
      verses = TenGreenBottles.new
      bottles = Song.new(verses)
      expect(verses).to receive(:verse).exactly(10).times
      bottles.run(10)
    end
  end
end
