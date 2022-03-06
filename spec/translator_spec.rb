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
        expect(@translator.message).to eq(["a", " ", "b"])
        expect(@translator.english).to be_a(Hash)
        expect(@translator.english.keys).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
        expect(@translator.english['m']).to eq(["OO", "..", "O."])
      end

      it 'can convert a letters into its braille letter' do
        expect(@translator.to_braille).to eq([["O.", "..", ".."], ["..", "..", ".."], ["O.", "O.", ".."]])
      end

      it 'can take just the top row of all braille letters from to_braille' do
        expect(@translator.top_row).to eq(["O.", "..", "O."])
      end

      it 'can take just the middle row of all braille letters from to_braille' do
        expect(@translator.middle_row).to eq(["..", "..", "O."])
      end

      it 'can take just the bottom row of all braille letters from to_braille' do
        expect(@translator.bottom_row).to eq(["..", "..", ".."])
      end
  end


  context 'Iteration 2.1' do
    before(:each) do
      @translator = Translator.new("hello world")
    end

    it 'can take just the top row of all braille letters from to_braille' do
      expect(@translator.top_row).to eq(["O.", "..", "O."])
    end







  end






end
