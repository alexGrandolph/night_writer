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
    top.join.split('')
  end

  def middle_row
    middle = []
    middle << format_message[0]
    middle.join.split('')
  end

  def bottom_row
    bottom = []
    bottom << format_message[0]
    bottom.join.split('')
  end


  def translate_message
    whole_message = format_message

  end


end
