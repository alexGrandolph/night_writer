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

    it 'has readable attributes' do
      expect(@reader.input_file).to eq('./spec/reader_test/reader_input.txt')
    end

    it 'can return the output file' do
      expect(@reader.output_file).to eq('./spec/reader_test/reader_output.txt')
    end

    it 'can display welcome message' do
      expect{@reader.welcome_message}.to output("created ./spec/reader_test/reader_output.txt 6 characters").to_stdout
    end
  end

  context 'iteration 3.2' do

    before(:each) do
        ARGV[0] = './spec/reader_test/reader_multi.txt'
        ARGV[1] = './spec/reader_test/reader_multi_output.txt'
        @reader = Reader.new
    end

    it 'can display welcome message' do
      expect{@reader.welcome_message}.to output("created ./spec/reader_test/reader_multi_output.txt 69 characters").to_stdout
    end




  end
















end
