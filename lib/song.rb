require_relative "verses"

class Song

  def initialize(verses)
    @verses = verses
  end

  def create_song(number_of_bottles)
    song = []
    until end_of_song?(number_of_bottles) do
      verses = @verses.verse_type(number_of_bottles)
      number_of_bottles -= 1
      song.push(verses)
    end
    song
  end

  def end_of_song?(number_of_bottles)
    number_of_bottles == 0
  end
end
