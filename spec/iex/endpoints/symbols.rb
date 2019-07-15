require 'spec_helper'

describe IEX::Resources::Symbol do
  include_context 'client'

  context 'list all the known symbols'

  subject do
    client.symbols
  end

  it 'retrieves all the known symbols', vcr: { cassette_name: 'symbols/all'} do
    expect(subject.count).to be > 0

    symbol = subject.first

    expect(symbol.symbol).to eq "A"
    expect(symbol.name).to eq "Agilent Technologies Inc."
    expect(symbol.date).to eq "2019-07-15"
    expect(symbol.type).to eq "cs"
    expect(symbol.region).to eq "US"
    expect(symbol.currency).to eq "USD"

  end
end