require_relative 'alphabet'
require_relative 'translator'
require_relative 'io_able'


class Writer
  include IOable

  attr_reader :english_braille_alphabet, :translator

  def initialize()
    @input_file_path = ARGV[0]
    @output_file_path = new_output_file
    @translator = Translator.new(read_message)
  end

  def load_input
    input = read_message
    input.split(/(\W)/)
  end

  def output_braille
    writer = File.open(@output_file_path, "w")
    new = writer.write(@translator.formatted_braille_message)
    print "created #{@output_file_path} containing #{read_message.length} characters"
  end

end
