require_relative 'alphabet'
require_relative 'braille_translator'
require_relative 'io_able'


class Reader
  include IOable

  attr_reader :input_file_path, :output_file_path, :braille_translator

  def initialize
    @input_file_path = ARGV[0]
    @output_file_path = new_output_file
    @braille_translator = BrailleTranslator.new(read_message)
  end

  def welcome_message
    message = File.open(@input_file_path).read
    writer = File.open(@output_file_path, "w")
    new = writer.write(message)
    print "created #{@output_file_path} #{message.length} characters"
  end

  def output_translated_message
    writer = File.open(@output_file_path, "w")
    new = writer.write(@braille_translator.output_ready_message)
    print "created #{@output_file_path} containing #{read_message.length} characters"
  end

end
