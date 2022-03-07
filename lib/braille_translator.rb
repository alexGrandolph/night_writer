require 'alphabet'


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

  def top_row
    top = []
    top << format_message[0]
    formatted_top = top.join.split('')
    top_array = []
    formatted_top.each_slice(2).map do |top|
      top_array << "#{top.first}#{top.last}"
    end
    top_array
  end

  def middle_row
    middle = []
    middle << format_message[1]
    formatted_mid = middle.join.split('')
    mid_array = []
    formatted_mid.each_slice(2).map do |top|
      mid_array << "#{top.first}#{top.last}"
    end

    mid_array
  end

  def bottom_row
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
    whole_message = [top_row, middle_row, bottom_row].transpose
    all_braille = @braille.keys
    array = []
    whole_message.each do |collumn|
      if all_braille.include?(collumn)
        array << @braille[collumn]
      end
    end
    array 
  end


end
