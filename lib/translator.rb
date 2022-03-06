require 'alphabet'
require 'writer'


class Translator
  attr_reader :english, :message

  def initialize(message)
    @message = message
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

  def top_row
    top = []
    to_braille.each do |letter|
      top << letter[0]
    end
    top
  end



end
