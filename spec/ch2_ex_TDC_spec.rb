require 'ch2_ex_TDC'

RSpec.describe DiaryEntry do
  y = "Odesa is under curfew after repeated missile strikes. A strike on the southern port city earlier forced visiting European Council President Charles Michel to take cover"
  x = "Odesa under attack"

	it 'initializes the DiaryEntry class' do
		d_e = DiaryEntry.new(x, y)
    expect(d_e).to be_a Object
  end

  it 'Checks if title is outputed' do
		d_e = DiaryEntry.new(x, y)
    expect(d_e.title).to eq x
    expect(d_e.title).to be_a String
  end

  it 'Checks if contents is outputed' do
		d_e = DiaryEntry.new(x, y)
    expect(d_e.contents).to eq y
    expect(d_e.title).to be_a String
  end
  describe '#count_words' do
    it 'Checks if count of words is correct for the contents' do
      d_e = DiaryEntry.new(x, y)
      expect(d_e.count_words).to eq 26
    end
    it 'returns zero if contents are empty' do 
      d_e = DiaryEntry.new(x, '')
      expect(d_e.count_words).to eq 0
    end
  end

  it 'Return estimate of the reading time in minutes' do 
    d_e = DiaryEntry.new(x, y)
    expect(d_e.reading_time(5)).to eq 5
  end

  describe '#reading_chunk' do
    it 'return chunk user can read in given minutes based on reading speed' do
      d_e = DiaryEntry.new(x, y)
      expect(d_e.reading_chunk(5, 1)).to eq "Odesa is under curfew after"
    end

    it 'return the next chunk if run again from where it left' do
      d_e = DiaryEntry.new(x, y)
      d_e.reading_chunk(5, 1)
      expect(d_e.reading_chunk(5, 1)).to eq "repeated missile strikes. A strike"
    end
    it "will count a chunk of the words the user is able to read in a set time from where it left off until the end" do
      d_e = DiaryEntry.new(x, y)
      d_e.reading_chunk(10, 1)
      d_e.reading_chunk(10, 1)
      expect(d_e.reading_chunk(7, 1)).to eq "President Charles Michel to take cover"
    end
  
    it "will count a chunk of the words the user is able to read in a set time from where it left off until the end" do
      d_e = DiaryEntry.new(x, y)
      d_e.reading_chunk(10, 1)
      d_e.reading_chunk(10, 1)
      d_e.reading_chunk(6, 1)
      expect(d_e.reading_chunk(5, 1)).to eq "Odesa is under curfew after"
    end
  end
end