require 'ch2_ex_TDCS_ML.rb'
require 'ch2_ex_TDCS_TR.rb'
RSpec.describe MusicLibrary do
  context "when we add a track" do
    it "adds a track to the library" do
      music_library = MusicLibrary.new
      track = Track.new("my_title", "my_artist")
      music_library.add( track )
      expect(music_library.all).to eq [track]
    end
    
    it "gets all tracks" do
      library = MusicLibrary.new
      track_1 = Track.new("Carte Blanche", "Veracocha")
      track_2 = Track.new("Synaesthesia", "The Thrillseekers")
      library.add(track_1)
      library.add(track_2)
      expect(library.search_by_title("Carte")).to eq [track_1]
    end
  end
end