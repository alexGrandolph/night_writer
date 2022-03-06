require 'alphabet'
require 'writer'


class Translator
  attr_reader :english

  def initialize
    @english = Alphabet.new.english_to_braille
  end

  def to_braille(message)
    braille_characters = []
    message = message.split(/(\W)/)
    message.each do |word|
      word.split('').each do |character|
        @english.each do |alphabet_letter, braille|
          if character == alphabet_letter
            braille_characters << @english[character]
          end
        end
      end
    end
    braille_characters
  end




end
