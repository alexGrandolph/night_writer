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

  it 'can read given file' do
    #
    expect(@night_writer.read).to eq("here are a bunch of words.\n")
  end

  it 'can write to a new file' do
    expected = @night_writer.read.upcase
    expect(@night_writer.write_new_file).to eq(expected)
  end

  it 'can give the welcome message' do
    expect(@night_writer.welcome).to eq("Created #{@output} containing #{incoming.length} characters"")
  end



end
