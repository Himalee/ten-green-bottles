class Display

  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
  end

  def bottles_prompt(prompt)
    @output.puts prompt
  end

  def user_bottles
    user_bottles = @input.gets.chomp
    @output.puts "#{user_bottles}"
  end
end
