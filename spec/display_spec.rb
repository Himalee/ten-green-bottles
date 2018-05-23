require "display"
require "verses"

describe Display do

  before(:each) do
    @output = StringIO.new
  end

  context "user input" do
    it "prompts user" do
      song = spy(song)
      display_prompt = Display.new(song, @output)
      display_prompt.user_prompt("hello")
      expect(@output.string).to eql("hello\n")
    end
  end

  it "gets 10 bottles from user" do
    input = StringIO.new("10")
    song = spy(Song)
    bottles = Display.new(song, @output, input)
    user_input = bottles.user_bottles
    expect(user_input).to eql(10)
  end
end
