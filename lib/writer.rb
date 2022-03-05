require 'alphabet'


class Writer

  def initialize()
    @input_file_path = ARGV[0]
    @output_file_path = new_output_file
  end

  def new_output_file
    return ARGV[1] if ARGV[1]
  end

  def read_message
    File.open(@input_file_path).read
  end

  def write_message
  message = read_message
  writer = File.open(@output_file_path, "w")
  new = writer.write(message)
  print "created #{@output_file_path} #{message.length} characters".delete("'")
  end

  def read_output
    message = read_message
    updated_message = message.upcase
    writer = File.open(@output_file_path, "w")
    new = writer.write(updated_message)
    # require "pry"; binding.pry
    updated_message
  end

  def load_input
    input = read_message
    input.split
  end

  def to_braille
    array = []
    alpha_hash = Alphabet.new.english_to_braille
    load_input.each do |letter|
      alpha_hash.each do |alphabet_letter, braille|
        if letter == alphabet_letter
          array << alpha_hash[letter]
        end
      end
    end
    array
  end

end
