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

  def long_lines
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
    top_array = long_lines[0].join.split('')
    new_top = top_array #.join.split('')
    final_top = []
    new_top.each_slice(2).map do |top|
      final_top << "#{top.first}#{top.last}"
    end
    final_top
  end

  def middle_row
    mid_array = long_lines[1].join.split('')
    new_mid = mid_array #.join.split('')
    final_mid = []
    new_mid.each_slice(2).map do |mid|
      final_mid << "#{mid.first}#{mid.last}"
    end
    final_mid
  end

  def bottom_row

    bottom_array = long_lines[2].join.split('')
    new_bottom = bottom_array #.join.split('')
    final_bottom = []
    new_bottom.each_slice(2).map do |bottom|
      final_bottom << "#{bottom.first}#{bottom.last}"
    end
    final_bottom
  end

  def tp
    top = []
    top << format_message[0]
    formatted_top = top.join.split('')
    top_array = []
    formatted_top.each_slice(2).map do |top|
      top_array << "#{top.first}#{top.last}"
    end
    top_array

  end

  def middl
    middle = []
    middle << format_message[1]
    formatted_mid = middle.join.split('')
    mid_array = []
    formatted_mid.each_slice(2).map do |top|
      mid_array << "#{top.first}#{top.last}"
    end

    mid_array
  end

  def botto
    bottom = []
    bottom << format_message[2]
    formatted_bot = bottom.join.split('')
    bot_array = []
    formatted_bot.each_slice(2).map do |top|
      bot_array << "#{top.first}#{top.last}"
    end
    bot_array
  end


  def translate_message
    final_message = [top_row, middle_row, bottom_row].transpose
    all_braille = @braille.keys
    final_array = []
    final_message.each do |collumn|
      if all_braille.include?(collumn)
        final_array << @braille[collumn]
      end
    end
    final_array
  end

  def output_ready_message
    translate_message.join
  end


end
#   whole_message = [top_row, middle_row, bottom_row] #.transpose
#   require "pry"; binding.pry
#   all_braille = @braille.keys
#   array = []
#   whole_message.each do |collumn|
#     if all_braille.include?(collumn)
#       array << @braille[collumn]
#     end
#   end
#   array
# end
