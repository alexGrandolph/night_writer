require './lib/night_writer'
require 'rspec'
require 'simplecov'
SimpleCov.start


RSpec.describe NightWriter do
  before(:each) do
    @night_writer = NightWriter.new('./spec/test/message.txt', './spec/test/braille.txt')

  end
  it 'exists' do
      expect(@night_writer).to be_a(NightWriter)
  end

  it 'prints welcome message' do

    expect(@night_writer.welcome).to eq("Created ./spec/test/braille.txt containing 27 characters")
  end


end
