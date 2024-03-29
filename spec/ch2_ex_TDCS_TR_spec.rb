require 'ch2_ex_TDCS_TR.rb'

RSpec.describe Track do
  it "constructs" do
    track = Track.new("my_title", "my_artist")
    expect(track.title).to eq "my_title"
    expect(track.artist).to eq "my_artist"
  end
  it "returns formatted title and artist" do
    track = Track.new("my_title", "my_artist")
    expect(track.format).to eq "my_title by my_artist"
  end
end