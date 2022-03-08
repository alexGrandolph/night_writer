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
      expect(@reader.input_file_path).to eq('./spec/reader_test/reader_input.txt')
    end

    it 'can return the output file' do
      expect(@reader.output_file_path).to eq('./spec/reader_test/reader_output.txt')
    end

    it 'can return read file as string' do
      expect(@reader.read_message).to eq("h\n")
      expect(@reader.read_message).to be_a(String)
    end

    it 'can display welcome message' do
      expect{@reader.output_translated_message}.to output("created ./spec/reader_test/reader_output.txt containing 2 characters").to_stdout
    end
  end

  context 'iteration 3.2' do

    before(:each) do
        ARGV[0] = './spec/reader_test/reader_multi.txt'
        ARGV[1] = './spec/reader_test/reader_multi_output.txt'
        @reader = Reader.new
    end

    it 'can display welcome message' do
      expect{@reader.output_translated_message}.to output("created ./spec/reader_test/reader_multi_output.txt containing 69 characters").to_stdout
    end
  end


  context 'Iteration 3.3, integration of BrailleTranslator class' do

    before(:each) do
      ARGV[0] = './spec/reader_test/final_message.txt'
      ARGV[1] = './spec/reader_test/final_output.txt'
      @reader = Reader.new
    end

    it 'can read the translator object initialization' do
      expect(@reader.braille_translator).to be_a(BrailleTranslator)
    end

    it 'can output a translated message to the output file path' do
      expect{@reader.output_translated_message}.to output("created ./spec/reader_test/final_output.txt containing 629 characters").to_stdout
    end
  end


end
