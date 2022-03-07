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








end
