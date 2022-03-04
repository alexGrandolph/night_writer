require './lib/night_writer'
require 'rspec'
require 'simplecov'
SimpleCov.start


RSpec.describe Writer do
  before(:each) do
    ARGV[0] = './spec/test/test_message.txt'
    ARGV[1] = './spec/test/test_output.txt'
    @night = Writer.new
  end

  it 'exists' do
    expect(@night).to be_a(Writer)
  end








end
