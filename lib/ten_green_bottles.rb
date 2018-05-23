require_relative "verses"
require_relative "song"
require_relative "display"

class TenGreenBottles

  def initialize(display)
    @display = display
  end

  def run_song
    @display.user_prompt("Enter the number of bottles")
    compiles_song
  end

  def compiles_song
    @display.user_bottles
    @display.display_song
  end
end

verses = Verses.new
song = Song.new(verses)
display = Display.new(song)
bottles = TenGreenBottles.new(display)
bottles.run_song
