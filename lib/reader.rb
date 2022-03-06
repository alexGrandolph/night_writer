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

  def welcome_message
    message = File.open(@input_file).read
    writer = File.open(@output_file, "w")
    new = writer.write(message)
    print "created #{@output_file} #{message.length} characters".delete("'")
  end




end
