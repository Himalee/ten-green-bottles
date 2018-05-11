require "bottles_user_input"

describe Display do
  context "user input" do
    it "prompts user for number of bottles" do
      output = StringIO.new
      display_prompt = Display.new(output)
      display_prompt.bottles_prompt
      expect(output.string).to eql("Enter the number of bottles\n")
    end
  end

  it "gets 10 bottles from user" do
    output = StringIO.new
    input = StringIO.new("10")
    user_bottles = Display.new(output, input)
    user_bottles.user_bottles
    expect(output.string.to_i).to eql(10)
  end
end
