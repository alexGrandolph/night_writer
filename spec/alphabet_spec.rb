require './lib/alphabet'
require 'rspec'
require 'simplecov'
SimpleCov.start

RSpec.describe Alphabet do
  before(:each) do
    @alphabet = Alphabet.new
  end

  it 'exists' do
    expect(@alphabet).to be_a(Alphabet)
  end









end
