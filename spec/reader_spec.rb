require './lib/reader'
require 'rspec'
require 'simplecov'
SimpleCov.start


RSpec.describe Reader do
  context 'Iteration 3.1' do

    before(:each) do
      ARGV[0] = './spec/reader_test/reader_input.txt'
      ARGV[1] = './spec/reader_test/reader_output.txt'
      @reader = Reader.new
    end

    it 'exists' do
      expect(@reader).to be_a(Reader)
    end






  end
















end
