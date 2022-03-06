require './lib/translator'
require 'simplecov'
require 'rspec'
SimpleCov.start

RSpec.describe Translator do

  context 'Iteration 2.1' do
    before(:each) do
      @translator = Translator.new
    end

      it 'exists' do
        expect(@translator).to be_a(Translator)
      end

      it 'has readable attributes' do
        expect(@translator.english).to be_a(Hash)
      end







  end






end
