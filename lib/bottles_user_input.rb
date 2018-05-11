class Display

  def initialize(output = $stdout)
    @output = output
  end

  def bottles_prompt
    @output.puts "Enter the number of bottles"
  end
end
