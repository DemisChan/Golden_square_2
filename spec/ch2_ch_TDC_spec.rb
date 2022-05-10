require 'ch2_ch_TDC'

RSpec.describe GrammarStats do
  y = "Odesa is under curfew after repeated missile strikes. A strike on the southern port city earlier forced visiting European Council President Charles Michel to take cover! This also is a test string. Also this."
  x = "Odesa under attack"

	it 'initializes the DiaryEntry class' do
		gs = GrammarStats.new
    expect(gs).to be_a Object
  end

  it 'Checks for capital in text and last punctuation mark' do
    gs = GrammarStats.new
    check = gs.check("Odesa is under curfew after repeated missile strikes!!")
    expect(check).to eq true
  end
  it 'Checks for capital in text and last punctuation mark' do
    gs = GrammarStats.new
    check = gs.check("")
    expect(check).to eq false
  end

  it 'Checks for capital in text and last punctuation mark' do
    gs = GrammarStats.new
    check = gs.check("Odesa is under curfew after repeated missile strikes.")
    expect(check).to eq true
  end

  it 'Checks for capital in text and last punctuation mark' do
    gs = GrammarStats.new
    check = gs.check("Odesa is under curfew after repeated missile strikes")
    expect(check).to eq false
  end

  it 'gives percentage of correctly syntaxed sentences' do
    gs = GrammarStats.new
    gs.check("Odesa is under curfew after repeated missile strikes")
    gs.check("Odesa is under curfew after repeated missile strikes.")
    gs.check("Odesa is under curfew after repeated missile strikes!!")
    expect(gs.percentage_good).to eq 66
  end

end