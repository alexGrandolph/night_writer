require './lib/night_writer'
require 'rspec'
require 'simplecov'
SimpleCov.start


RSpec.describe NightWriter do
  before(:each) do
    @night_writer =

  end
  it 'exists' do
      expect(@night_writer).to be_a(NightWriter)
  end


end
