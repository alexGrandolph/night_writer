require './lib/writer'
require 'rspec'
require 'simplecov'
SimpleCov.start


RSpec.describe Writer do
  context 'Iteration 1' do
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
      # require "pry"; binding.pry
      expect{@night.write_message}.to output("created ./spec/test/test_output.txt 10 characters").to_stdout
    end
  end

  context 'Iteration 2' do
    before(:each) do
      ARGV[0] = './spec/test/letter_test.txt'
      ARGV[1] = './spec/test/letter_output.txt'
      @night = Writer.new
    end

      it 'can return whats in the outfile' do
        expect(@night.read_output).to eq("A\n")
      end

      it 'can load string from input file into an array'  do
        excpect(@night.load_input).to be_a(Array)
      end

      xit 'can convert  letters to braille' do
        expect(@night.to_braille('a')).to eq(["O.", "..", ".."])
      end


















  end






end
