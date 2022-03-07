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



  end








end
