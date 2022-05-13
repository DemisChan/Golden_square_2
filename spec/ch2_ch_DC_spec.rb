require "ch2_ch_DC"

RSpec.describe MusicHistory do
  context "create class instance and show the list when empty" do
    it "Music history class" do
      music_history = MusicHistory.new
      expect(music_history).to be_a Object
    end

    it "return empty list" do
      music_history = MusicHistory.new
      expect(music_history.list).to eq []
    end
  end

  context "add song to the list and show the list if song not in list else fail" do
    it "adds song to the list" do
      music_history = MusicHistory.new
      music_history.add('Black Hole Sun')
      expect(music_history.list).to eq ['Black Hole Sun']
    end

    it "adds 2 songs to the list" do
      music_history = MusicHistory.new
      music_history.add('Black Hole Sun')
      music_history.add('Smooth Criminal')
      expect(music_history.list).to eq ['Black Hole Sun', 'Smooth Criminal']
    end

    it 'fails' do
      music_history = MusicHistory.new
      music_history.add('Black Hole Sun')
      expect { music_history.add('Black Hole Sun') }.to raise_error 'Song is already in the list'
    end
  end

  it 'fails' do
    music_history = MusicHistory.new
    expect { music_history.add('') }.to raise_error 'No song given'
  end
end
