require 'spec_helper'

describe 'IsbnCalculator' do
  it "responds with a complete isbn number with check digit not 0" do
    isbn = IsbnCalculator.new
    expect(isbn.complete_isbn(978014300723)).to eq(9780143007234)
  end

  it "responds with a complete isbn number with check digit 0" do
    isbn = IsbnCalculator.new
    expect(isbn.complete_isbn(978316148410)).to eq(9783161484100)
  end
end
