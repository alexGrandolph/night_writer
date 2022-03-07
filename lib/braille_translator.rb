require_relative 'alphabet'


class BrailleTranslator

  attr_reader :message, :braille

  def initialize(message)
    @message = message
    @braille = Alphabet.new.braille_to_english
  end

  def format_message
    @message.split("\n")
  end

  def translate
    all_letters = @braille.values
    all_braille = @braille.keys
    if all_braille.include?(format_message)
      @braille[format_message]
    end
  end

  def combine_rows
    top = []
    middle = []
    bottom = []
    message = format_message.reject {|string| string == ""}
    index = 0
    counter = message.count / 3
    counter.times do
      top << message[index]
      middle << message[index + 1]
      bottom << message[index + 2]
      index += 3
    end
    new_message = [top, middle, bottom]
    new_message
  end

  def top_row
    top_array = combine_rows[0].join.split('')
    top_array.each_slice(2).map do |top|
      "#{top.first}#{top.last}"
    end

  end

  def middle_row
    mid_array = combine_rows[1].join.split('')
    mid_array.each_slice(2).map do |mid|
      "#{mid.first}#{mid.last}"
    end
  end

  def bottom_row
    bottom_array = combine_rows[2].join.split('')
    bottom_array.each_slice(2).map do |bottom|
      "#{bottom.first}#{bottom.last}"
    end
  end

  def translate_message
    final_message = [top_row, middle_row, bottom_row].transpose
    all_braille = @braille.keys
    final_message.map do |collumn|
      if all_braille.include?(collumn)
        @braille[collumn]
      end
    end
  end

  def output_ready_message
    translate_message.join
  end

end
