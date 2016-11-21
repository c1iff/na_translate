require('rspec')
require('transcribe')

describe('transcribe') do
  it("takes a string sequence of amion acids and translates to protein sequence") do
    expect(("atgcatgcaaaa").transcribe).to eq('MHAK')
  end
end
