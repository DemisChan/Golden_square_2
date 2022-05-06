require 'ch2_ch_TDM'

RSpec.describe 'count_words method' do
  it 'returns 0 if there is no words' do
    expect(count_words('')).to eq 0
  end

  it 'return 5 if words are 5' do
    expect(count_words('a a a a a')).to eq 5
  end
  it 'returns 10 if word are 10 counting hyphens and parsing commas and spaces' do
    expect(count_words('one, two, three-four, five and six-seven eight nine!')).to eq 10
  end
end
