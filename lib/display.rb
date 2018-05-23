require_relative "verses"
require_relative "song"

class Display

  def initialize(song, output = $stdout, input = $stdin)
    @song = song
    @output = output
    @input = input
  end

  def user_prompt(prompt)
    @output.puts prompt
  end

  def user_bottles
    @user_bottles = @input.gets.chomp.to_i
  end

  def display_song
    @output.puts @song.create_song(@user_bottles)
  end
end
