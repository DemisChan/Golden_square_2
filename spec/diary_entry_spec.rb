require "diary_entry"
require "diary"


RSpec.describe DiaryEntry_2 do
  context "initialize class" do
    it "return title and contents" do
      de = DiaryEntry_2.new("13th May 2022", "Demis and Emma are pairing")
      expect(de.title).to eq "13th May 2022"
      expect(de.contents).to eq "Demis and Emma are pairing"
    end
  end

  context "counting words of contents" do
    it "returns the number of words in contents" do
      de = DiaryEntry_2.new("13th May 2022", "Demis and Emma are pairing")
      expect(de.count_words).to eq 5
    end
  end

  context "Estimate reading time" do
    it "Return duration of reading" do
      diary_entry = DiaryEntry_2.new("13th May 2022", "Demis and Emma are pairing")
      expect(diary_entry.reading_time(2)).to eq 3
    end
  end

  context "counting words with doubles" do
    it "Return number of words" do
      diary = Diary.new
      fake = double :DiaryEntry, count_words: 3
      diary.add(fake)
      expect(diary.count_words).to eq 3
    end
  end
end
