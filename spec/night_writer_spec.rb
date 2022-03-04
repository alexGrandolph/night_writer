require './lib/night_writer'
require 'rspec'
require 'simplecov'
SimpleCov.start


RSpec.describe NightWriter do
  before(:each) do
    @night_writer = NightWriter.new
    expect(@night_writer).to be_a(NightWriter)
  end
  it 'exists' do

  end





end
