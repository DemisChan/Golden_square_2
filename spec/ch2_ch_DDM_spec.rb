require 'ch2_ch_DDM'

RSpec.describe 'Check if #TODO is in the text' do
  it 'returns True if #TODO is in text' do
    result = todo_track('#TODO-Clean the house.')
    expect(result).to eq 'True'
  end

  it 'returns True if #TODO is in text' do
    result = todo_track('Read a book.')
    expect(result).to eq 'False'
  end

  it 'returns True if #TODO is in text' do
    result = todo_track('# TODO Read a book.')
    expect(result).to eq 'True'
  end

  it 'fails' do
    expect{ todo_track(1236) }.to raise_error 'No text given.'
  end
end
