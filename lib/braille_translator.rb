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
    formatted_top.combination(2).map {|char| char.join}.first(formatted_top.count/2)
  end

  def middle_row
    middle = []
    middle << format_message[0]
    formatted_mid = middle.join.split('')
    formatted_mid.combination(2).map {|char| char.join}.first(formatted_mid.count/2)

  end

  def bottom_row
    bottom = []
    bottom << format_message[0]
    formatted_bot = bottom.join.split('')
    formatted_bot.combination(2).map {|char| char.join}.first(formatted_bot.count/2)
  end


  def translate_message
    whole_message = format_message

  end


end
