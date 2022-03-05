require './lib/writer'
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

  it 'can receive new_output_file' do
    expect(@night.new_output_file).to eq(ARGV[1])
  end

  it 'can read message from input file' do
    expect(@night.read_message).to be_a(String)
  end

  it 'can write_message to a new file' do
    expect{@night.write_message}.to output("created ./spec/test/test_output 9 characters").to_stdout
    

  end






end
