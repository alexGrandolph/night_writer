require 'alphabet'
require 'translator'


class Reader

  attr_reader :input_file, :output_file

  def initialize
    @input_file = ARGV[0]
    @output_file = get_output_file
  end

  def get_output_file
    return ARGV[1] if ARGV[1]
  end




end
