require "display"
require "verses"
require "song"
require "ten_green_bottles"

describe TenGreenBottles do

  before (:each) do
    verses = Verses.new
    @song = Song.new(verses)
    @output = StringIO.new
  end

  context "integration test" do
    it "displays verses given 1 bottle" do
      input = StringIO.new("1")
      display = Display.new(@song, @output, input)
      bottles = TenGreenBottles.new(display)

      bottles.run_song

      expect(@output.string).to include("1 green bottle", "no more bottles")
    end

    it "displays verses given 5 bottle" do
      input = StringIO.new("5")
      display = Display.new(@song, @output, input)
      bottles = TenGreenBottles.new(display)

      bottles.run_song

      expect(@output.string).to include("5 green bottles", "4 green bottles")
    end
  end
end
