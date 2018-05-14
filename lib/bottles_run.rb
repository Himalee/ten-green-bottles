require_relative "bottles_user_input"
require_relative "bottles"


class Song

  def initialize(verses)
    @verses = verses
  end

  def run(number)
    user_bottles_prompt
    until end_of_song?(number) do
      @verses.verse(number)
      number -= 1
    end
  end

  def user_bottles_prompt
    display = Display.new
    display.bottles_prompt("Enter the number of bottles")
  end

  def end_of_song?(number_of_bottles)
    number_of_bottles == 0
  end
end

# verses = TenGreenBottles.new
# number = Display.new
# s = Song.new(verses, number)
# s.run
