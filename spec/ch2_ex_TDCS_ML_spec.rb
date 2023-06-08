require 'ch2_ex_TDCS_ML.rb'

RSpec.describe MusicLibrary do
  context "initially" do
    it "ais empty" do
      music_library = MusicLibrary.new
      expect(music_library.all).to eq []
    end
  end
end