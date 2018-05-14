require "bottles_user_input"

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
    user_bottles = Display.new(output, input)
    user_bottles.user_bottles
    expect(output.string.to_i).to eql(10)
  end

  it "gets any number of bottles from user" do
    output = StringIO.new
    input = StringIO.new("100")
    user_bottles = Display.new(output, input)
    user_bottles.user_bottles
    expect(output.string.to_i).to eql(100)
  end
end
