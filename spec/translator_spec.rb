require './lib/writer'
require 'alphabet'
require 'rspec'
require 'simplecov'
SimpleCov.start

RSpec.describe Translator do

  context 'Iteration 2.1' do
    before(:each) do
      @translator = Translator.new
    end

      it 'exists' do
        expect(@translator).to be_a(Translator)
      end







  end






end
