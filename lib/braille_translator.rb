require 'alphabet'


class BrailleTranslator

  def initialize(message)
    @message = message
    @english = Alphabet.new.english_to_braille
  end


end
