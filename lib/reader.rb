require_relative 'alphabet'
require_relative 'braille_translator'


class Reader

  attr_reader :input_file, :output_file, :braille_translator

  def initialize
    @input_file = ARGV[0]
    @output_file = get_output_file
    @braille_translator = BrailleTranslator.new(read_message)
  end

  def get_output_file
    return ARGV[1] if ARGV[1]
  end

  def read_message
    File.open(@input_file).read
  end

  def welcome_message
    message = File.open(@input_file).read
    writer = File.open(@output_file, "w")
    new = writer.write(message)
    print "created #{@output_file} #{message.length} characters"
  end

  def output_translated_message
    writer = File.open(@output_file, "w")
    new = writer.write(@braille_translator.output_ready_message)
    print "created #{@output_file} containing #{read_message.length} characters"


  end



end
