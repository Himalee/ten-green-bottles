require "verses"
require "song"

describe Song do

  it "sings verse once, given one bottle" do
    verses = spy(Verses)
    song = Song.new(verses)
    expect(song.complete_song).to include("1 green bottle", "no more bottles")
  end

  it "loops around with 1 bottle" do
    verses = spy(Verses)
    song = Song.new(verses)
    expect(verses).to receive(:verse_type).once
    song.create_song(1)
  end

  it "loops around with 2 bottles" do
    verses = spy(Verses)
    song = Song.new(verses)
    expect(verses).to receive(:verse_type).twice
    song.create_song(2)
  end

  it "loops around with 6 bottles" do
    verses = spy(Verses)
    song = Song.new(verses)
    expect(verses).to receive(:verse_type).exactly(6).times
    song.create_song(6)
  end
end
