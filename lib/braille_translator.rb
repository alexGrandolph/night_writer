require 'alphabet'


class BrailleTranslator

  attr_reader :braille

  def initialize(message)
    @message = message
    @braille = Alphabet.new.braille_to_english
  end


end
