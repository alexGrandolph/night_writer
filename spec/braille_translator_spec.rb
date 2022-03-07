require './lib/braille_translator'
require 'simplecov'
require 'rspec'
SimpleCov.start

RSpec.describe BrailleTranslator do

  context 'Iteration 3.1' do

    before(:each) do
      @translator = BrailleTranslator.new("O.\nOO\n..")
    end

    it 'exists' do
      expect(@translator).to be_a(BrailleTranslator)
    end

    it 'has readable attributes' do

      expect(@translator.braille).to be_a(Hash)
      expect(@translator.braille[["OO", "..", "O."]]).to eq("m")
      expect(@translator.message).to be_a(String)

    end

    it 'can format message string into a comma separated array' do
      expect(@translator.format_message).to be_a(Array)
      expect(@translator.format_message.count).to eq(3)
    end

    it 'can translate message into english letter' do
      expect(@translator.translate).to be_a(String)
      expect(@translator.translate).to eq("h")
    end
  end

  context 'Iteration 3.2, multi word message' do
    before(:each) do
      @translator = BrailleTranslator.new("O.O.O.O.O....OO.O.O.OO\nOO.OO.O..O..OO.OOOO..O\n....O.O.O....OO.O.O...")
    end

    it 'can format string into comma seperated array' do
      expect(@translator.format_message).to be_a(Array)
      expect(@translator.format_message.count).to eq(3)
    end

    it 'can combine over 40 character lines of each row, into an array' do
      expect(@translator.combine_rows).to be_a(Array)
      expect(@translator.combine_rows.count).to eq(3)
      expect(@translator.combine_rows[0]).to eq(["O.O.O.O.O....OO.O.O.OO"])
      expect(@translator.combine_rows[1]).to eq(["OO.OO.O..O..OO.OOOO..O"])
      expect(@translator.combine_rows[2]).to eq(["....O.O.O....OO.O.O..."])
    end



    it 'can give top_row, middle_row, bottom_row of all characters in message' do
      expect(@translator.top_row).to be_a(Array)
      expect(@translator.top_row.count).to eq(11)
      expect(@translator.middle_row).to be_a(Array)
      expect(@translator.middle_row.count).to eq(11)
      expect(@translator.bottom_row).to be_a(Array)
      expect(@translator.bottom_row.count).to eq(11)
    end

    it 'can translate a multi word message' do
      expect(@translator.translate_message).to be_a(Array)
      expect(@translator.translate_message.count).to eq(11)
      expect(@translator.translate_message.first).to eq("h")
      expect(@translator.translate_message.last).to eq("d")
    end

    it 'can return a fully formatted message ready for output' do
      expect(@translator.output_ready_message).to be_a(String)
      expect(@translator.output_ready_message.length).to eq(11)
    end
  end

end
