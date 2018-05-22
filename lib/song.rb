require_relative "verses"

class Song

  def initialize(verses)
    @verses = verses
  end

  def create_song(number_of_bottles)
    #verses = []
    until end_of_song?(number_of_bottles) do
      @verses.verse_type(number_of_bottles)
      number_of_bottles -= 1
    end
    #verses
  end

  def complete_song

  end

  def end_of_song?(number_of_bottles)
    number_of_bottles == 0
  end
end
