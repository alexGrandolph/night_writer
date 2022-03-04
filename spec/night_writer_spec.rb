require './lib/night_writer'
require 'rspec'
require 'simplecov'
SimpleCov.start


RSpec.describe NightWriter do
  before(:each) do
    ARGV[0] = './spec/test/message.txt'
    ARGV[1] = './spec/test/output_file.txt'
    @night_writer = NightWriter.new(ARGV[0])
  end
  it 'exists' do
    expect(@night_writer).to be_a(NightWriter)
  end

  it 'can give the welcome message' do
    # require "pry"; binding.pry
    expect{@night_writer.welcome}.to output("Created ./spec/test/output_file.txt containing 27 characters").to_stdout
  end



end

# xit 'can read given file' do
#   #
#   expect(@night_writer.read).to eq("here are a bunch of words.\n")
# end
#
# xit 'can write to a new file' do
#   expected = @night_writer.read.upcase
#   expect(@night_writer.write_new_file).to eq(expected)
# end
