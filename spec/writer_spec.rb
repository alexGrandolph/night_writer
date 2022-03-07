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

      it 'has readable attributes' do

        expect(@night.english_braille_alphabet).to be_a(Hash)
      end

      it 'can receive new_output_file' do
        expect(@night.new_output_file).to eq(ARGV[1])
      end

      it 'can read message from input file' do
        expect(@night.read_message).to be_a(String)
      end
  end

  context 'Iteration 2.1' do

    before(:each) do
      ARGV[0] = './spec/test/letter_test.txt'
      ARGV[1] = './spec/test/letter_output.txt'
      @night = Writer.new
    end

      it 'can load string from input file into an array'  do
        expect(@night.load_input).to be_a(Array)
        expect(@night.load_input).to eq(["a", " ", "b", "\n"])
      end
  end
  #

  context 'Iteration 2.2, Translator class merge in ' do

    before(:each) do
      ARGV[0] = './spec/test/80characters.txt'
      ARGV[1] = './spec/test/80characters_output.txt'
      @night = Writer.new
    end

      it 'can instantiate a Translator object in intitalize' do
        expect(@night.translator).to be_a(Translator)
      end

      it 'can output the translated message into the output file' do
        expect{@night.output_braille}.to output("created ./spec/test/80characters_output.txt containing 86 characters").to_stdout
      end
  end
end
