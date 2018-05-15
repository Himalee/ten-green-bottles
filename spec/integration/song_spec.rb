require "display"
require "verses"
require "song"

describe Song do

  context "integration test" do

    it "displays verses given 1 bottle" do
    verses = Verses.new
    display = instance_spy(Display)
    allow(display).to receive(:user_bottles).and_return(1)
    output = StringIO.new
    bottles = Song.new(verses, display, output)

    bottles.run_song

    expect(output.string).to include("1 green bottle", "no more bottles")
    end

    it "displays verses given 5 bottles" do
    verses = Verses.new
    display = instance_spy(Display)
    allow(display).to receive(:user_bottles).and_return(5)
    output = StringIO.new
    bottles = Song.new(verses, display, output)

    bottles.run_song

    expect(output.string).to include("5 green bottles", "4 green bottles")
    end
  end
end
