class Display

  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
  end

  def bottles_prompt
    @output.puts "Enter the number of bottles"
  end

  def user_bottles
    @output.puts "10"
  end
end
