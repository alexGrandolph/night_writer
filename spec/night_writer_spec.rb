require './lib/night_writer'
require 'rspec'
require 'simplecov'
SimpleCov.start


RSpec.describe NightWriter do
  before(:each) do
    ARGV[0] = './spec/test/message.txt'
    ARGV[1] = './spec/test/braille.txt'
    @night_writer = NightWriter.new(ARGV[0])
  end
  it 'exists' do
      expect(@night_writer).to be_a(NightWriter)
  end

  xit 'can opem a file' do
    expect(@night_writer.open.class).to be_a(File)
  end

  xit 'prints welcome message' do

    expect(@night_writer.welcome).to eq("Created ./spec/test/braille.txt containing 27 characters")
  end



end
