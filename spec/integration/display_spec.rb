require "display"
require "verses"
require "song"

describe Display do

  context "integration test" do

    it "displays verses given 1 bottle" do
    verses = Verses.new
    song = Song.new(verses)
    output = StringIO.new
    input = StringIO.new("1")
    display = Display.new(output, input, song)

    display.complete_song

    expect(output.string).to include("1 green bottle", "no more bottles")
    end
  end
end
