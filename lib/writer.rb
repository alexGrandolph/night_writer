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
    updated_message = message
    writer = File.open(@output_file_path, "w")
    new = writer.write(updated_message)
    # require "pry"; binding.pry

  end

  def load_input
    input = read_message
    # require "pry"; binding.pry
    input.split(/(\W)/)

  end

  def to_braille
    array = []
    alpha_hash = Alphabet.new.english_to_braille
    load_input.each do |word|
      word.split('').each do |character|
        alpha_hash.each do |alphabet_letter, braille|
          if character == alphabet_letter
            array << alpha_hash[character]
          end
        end
      end
    end

    array #.to_s

  end

  def top_row
    top = []
    to_braille.each do |letter|
      top << letter[0]
    end
    top
    # require "pry"; binding.pry
    # if top.length > 40

  end

  def middle_row
    middle = []
    to_braille.each do |letter|
      middle << letter[1]
    end
    middle
  end

  def bottom_row
    bottom = []
    to_braille.each do |letter|
      bottom << letter[2]
    end
    bottom
  end

  def braille_rows_to_output
    row1 = top_row #.join
    row2 = middle_row #.join
    row3 = bottom_row #.join
    # require "pry"; binding.pry

    row1 = row1.each_slice(40).map {|s| s.join}
    row2 = row2.each_slice(40).map {|s| s.join}
    row3 = row3.each_slice(40).map {|s| s.join}
    index = row1.count


    require "pry"; binding.pry
    writer = File.open(@output_file_path, "w")
    new = writer.write("#{row1[0]}\n#{row2[0]}\n#{row3[0]}\n\n#{row1[1]}\n#{row2[1]}\n#{row3[1]}")
    # require "pry"; binding.pry

  end

end




# row_1 = []
# array.each do |letter|
#   row_1 << letter[0]
# end
