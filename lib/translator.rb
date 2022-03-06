require 'alphabet'
require 'writer'


class Translator
  attr_reader :english

  def initialize
    @english = Alphabet.new.english_to_braille
  end



end
