require './lib/night_writer'
require 'rspec'
require 'simplecov'
SimpleCov.start


RSpec.describe NightWriter do
  before(:each) do
    @night_writer = NightWriter.new('./spec/message.txt')

  end
  it 'exists' do
      expect(@night_writer).to be_a(NightWriter)
  end

  it 'prints welcome message' do
    expected = "Created #{@output} containing #{@output.length} characters"
    expect(@night_writer.welcome).to eq(expected)
  end


end
