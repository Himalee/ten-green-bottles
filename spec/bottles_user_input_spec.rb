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

end
