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
      expect(@translator.english.keys).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " ", ",", ";", ":", ".", "!", "(", ")", "?", "", "'", "-"])
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

  context 'Iteration 2.2' do

    before(:each) do
      @translator = Translator.new("hello world")
    end

    it 'can take just the top row of all braille letters from to_braille' do
      expect(@translator.top_row).to eq(["O.", "O.", "O.", "O.", "O.", "..", ".O", "O.", "O.", "O.", "OO"])
    end
  end

  context 'Iteration 2.3' do

    before(:each) do
      @translator = Translator.new("the quick brown fox jumped over the lazy brown dog pain pain pain pain pain pain pain")
    end

    it 'can seperate each word and space into an array, each word being an element' do
      expect(@translator.parse_message).to be_a(Array)
      expect(@translator.parse_message[2]).to eq("quick")
      expect(@translator.parse_message.last).to eq("pain")
    end

    it 'can make each letter/character of parse_words its own element an array' do
      expect(@translator.split_to_letters).to be_a(Array)
      expect(@translator.split_to_letters.count).to eq(33)
      expect(@translator.split_to_letters[4]).to eq(["b", "r", "o", "w", "n"])
    end


    it 'can format top_row if its more than 40 characters of braille' do
      expect(@translator.top_row_formatted).to be_a(Array)
      expect(@translator.top_row_formatted.count).to eq(3)
      expect(@translator.top_row_formatted.last).to eq("..OOO..OOO")
    end

    it 'can format middle_row if its more than 40 characters of braille' do
      expect(@translator.middle_row_formatted).to be_a(Array)
      expect(@translator.middle_row_formatted.count).to eq(3)
      expect(@translator.middle_row_formatted.last).to eq("..O...O..O")
    end

    it 'can format bottom_row if its more than 40 characters of braille' do
      expect(@translator.bottom_row_formatted).to be_a(Array)
      expect(@translator.bottom_row_formatted.count).to eq(3)
      expect(@translator.bottom_row_formatted.last).to eq("..O.....O.")
    end

    it 'can print a formatted braille message' do
      expect(@translator.formatted_braille_message).to be_a(String)
    end
  end

  context 'Refactor, testing punctuation' do

    before(:each) do
      @translator = Translator.new("! . , ? - *")
    end

    it 'can parse with punctuation' do
      expect(@translator.parse_message.count).to eq(22)
      expect(@translator.parse_message[1]).to eq('!')
    end

    it 'can formatted_braille_message with punctuation' do
      expect(@translator.formatted_braille_message).to be_a(String)
    end
  end
end
