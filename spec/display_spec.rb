require "display"

describe Display do
  context "user input" do
    it "prompts user" do
      output = StringIO.new
      display_prompt = Display.new(output)
      display_prompt.bottles_prompt("hello")
      expect(output.string).to eql("hello\n")
    end
  end

  it "gets 10 bottles from user" do
    output = StringIO.new
    input = StringIO.new("10")
    bottles = Display.new(output, input)
    user_input = bottles.user_bottles
    expect(user_input).to eql(10)
  end
end
