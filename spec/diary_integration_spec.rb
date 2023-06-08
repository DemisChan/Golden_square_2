require 'diary'
require 'diary_entry'

RSpec.describe "Integration" do
  context "Add items to diary" do
    it "Return diary entry" do
    diary = Diary.new
    diary_entry = DiaryEntry_2.new("13th May 2022", "Demis and Emma are pairing")
    diary.add(diary_entry)
    expect(diary.all).to eq [diary_entry]
    end

    it "Return diary entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry_2.new("13th May 2022", "Demis and Emma are pairing")
      diary_entry_2 = DiaryEntry_2.new("14th May 2022", "Day off")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end
  end

  context "Count the words in all entries" do
    it "Returns the count of words for one entry" do
      diary = Diary.new
      diary_entry = DiaryEntry_2.new("13th May 2022", "Demis and Emma are pairing")
      diary.add(diary_entry)
      expect(diary.count_words).to eq 5
    end
    
    it "Return word count for multiple entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry_2.new("13th May 2022", "Demis and Emma are pairing")
      diary_entry_2 = DiaryEntry_2.new("14th May 2022", "Day off")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 7
    end
  end

end
