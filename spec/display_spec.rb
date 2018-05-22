require "display"
require "verses"

describe Display do
  context "user input" do
    it "prompts user" do
      output = StringIO.new
      verses = spy(Verses)
      display_prompt = Display.new(output, verses)
      display_prompt.user_prompt("hello")
      expect(output.string).to eql("hello\n")
    end
  end

  it "gets 10 bottles from user" do
    output = StringIO.new
    input = StringIO.new("10")
    song = spy(Song)
    bottles = Display.new(output, input, song)
    user_input = bottles.user_bottles
    expect(user_input).to eql(10)
  end
end
