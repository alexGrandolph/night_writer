require './lib/alphabet'
require 'rspec'
require 'simplecov'
SimpleCov.start

RSpec.describe Alphabet do
  before(:each) do
    @alphabet = Alphabet.new
  end

  it 'exists' do
    expect(@alphabet).to be_a(Alphabet)
  end

  it 'has english to braille alphabet' do
    expect(@alphabet.english_to_braille).to be_a(Hash)
    expect(@alphabet.english_to_braille.keys).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
    expect(@alphabet.english_to_braille["a"]).to eq(["O.", "..", ".."])
    expect(@alphabet.english_to_braille["p"]).to eq(["OO", "O.", "O."])
  end











end
