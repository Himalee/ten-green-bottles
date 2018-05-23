require "verses"
require "song"

describe Song do

  before(:each) do
    @verses = spy(Verses)
    @song = Song.new(@verses)
  end
  
  it "loops around with 1 bottle" do
    @song.create_song(1)
    expect(@verses).to have_received(:verse_type).once
  end

  it "loops around with 2 bottles" do
    @song.create_song(2)
    expect(@verses).to have_received(:verse_type).twice
  end

  it "loops around with 6 bottles" do
    @song.create_song(6)
    expect(@verses).to have_received(:verse_type).exactly(6).times
  end
end
