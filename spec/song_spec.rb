require "display"
require "verses"
require "song"

describe Song do

    it "sings verse once, given one bottle" do
      display = spy(Display)
      allow(display).to receive(:user_bottles).and_return(1)
      verses = spy(Verses)
      allow(verses).to receive(:verse)
      song = Song.new(verses, display)

      song.run_song

      expect(verses).to receive(:verse).once
    end

    it "sings verse twice, given two bottles" do
      verses = instance_spy(Verses)
      allow(verses).to receive(:verse)
      display = instance_spy(Display)
      allow(display).to receive(:user_bottles).and_return(2)
      song = Song.new(verses, display)

      song.run_song

      expect(verses).to receive(:verse).exactly(2).times
    end
end
