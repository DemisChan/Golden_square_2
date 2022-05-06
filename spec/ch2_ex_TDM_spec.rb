require 'ch2_ex_TDM'

RSpec.describe 'make_snippet method' do
  it 'fails' do
    expect { make_snippet('') }.to raise_error 'No words were given'
  end

  it 'returns the text if words less than 5' do
    result = make_snippet('a b c')
    expect(result).to eq 'a b c'
  end

  it 'returns the text... if words more than 5' do
    result = make_snippet('a b c d e f')
    expect(result).to eq 'a b c d e...'
  end
end