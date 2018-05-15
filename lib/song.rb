require_relative "display"
require_relative "verses"


class Song

  def initialize(verses, display, output = $stdout)
    @verses = verses
    @display = display
    @output = output
  end

  def run_song
    user_prompt
    number = @display.user_bottles
    until end_of_song?(number) do
      @output.puts @verses.verse(number)
      number -= 1
    end
  end

  def user_prompt
    @display.bottles_prompt("Enter the number of bottles")
  end

  def end_of_song?(number_of_bottles)
    number_of_bottles == 0
  end
end


# verses = Verses.new
# display = Display.new
# s = Song.new(verses, display)
# s.run_song
