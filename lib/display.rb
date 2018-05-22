require_relative "verses"
require_relative "song"

class Display

  def initialize(output = $stdout, input = $stdin, song)
    @output = output
    @input = input
    @song = song
  end

  def user_prompt(prompt)
    @output.puts prompt
  end

  def user_bottles
    @input.gets.chomp.to_i
  end

  def complete_song
    number_of_bottles = user_bottles
    @output.puts @song.create_song(number_of_bottles)
  end

  def run_song
    user_prompt("Enter the number of bottles")
    complete_song
  end
end

# song = Song.new
# display = Display.new(song)
# display.run_song
