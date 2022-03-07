require 'alphabet'


class BrailleTranslator

  def initialize(message)
    @message = message
    @braille = Alphabet.new.braille_to_english
  end


end
