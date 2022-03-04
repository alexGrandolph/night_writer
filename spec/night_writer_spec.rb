require './lib/night_writer'
require 'rspec'
require 'simplecov'
SimpleCov.start


RSpec.describe NightWriter do
  before(:each) do
    @night_writer = NightWriter.new('message.txt')

  end
  it 'exists' do
      expect(@night_writer).to be_a(NightWriter)
  end

  it 'can read a file, give its character count' do
    expect(@night_writer.read).to eq(55)
  end

  it 'can give a welcome message' do
    expect(@night_writer.welcome).to eq("Created 'message.txt' containing 27 characters")
  end




end
