require './lib/translator'
require 'simplecov'
require 'rspec'
SimpleCov.start

RSpec.describe Translator do

  context 'Iteration 2.1' do
    before(:each) do
      @translator = Translator.new("a b")
    end

      it 'exists' do
        expect(@translator).to be_a(Translator)
      end

      it 'has readable attributes' do
        expect(@translator.message).to eq("a b")
        expect(@translator.english).to be_a(Hash)
        expect(@translator.english.keys).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
        expect(@translator.english['m']).to eq(["OO", "..", "O."])
      end

      xit 'can convert a letters into its braille letter' do
        expect(@translator.to_braille('a b')).to eq([["O.", "..", ".."], ["..", "..", ".."], ["O.", "O.", ".."]])
      end

      xit 'can take just the top row of all braille letters from to_braille' do
        expect(@translator.top_row).to eq(["O.", "..", "O."])
      end







  end






end
