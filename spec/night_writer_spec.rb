require './lib/night_writer'
require 'rspec'
require 'simplecov'
SimpleCov.start


RSpec.describe NightWriter do
  before(:each) do
    @night_writer = NightWriter.new

  end
  it 'exists' do
      expect(@night_writer).to be_a(NightWriter)
  end

  it 'can read a file, give its character count' do
    expect(@night_writer.read).to eq("Created 'braille.txt' containing 256 characters")
  end




end
