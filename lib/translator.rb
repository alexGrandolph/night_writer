require 'alphabet'
require 'writer'


class Translator
  attr_reader :english, :message

  def initialize(message)
    @message = message.split(/(\W)/)
    @english = Alphabet.new.english_to_braille
  end

  def to_braille
    braille_characters = []
    @message.each do |word|
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
    to_braille.map { |letter| letter[0] }
  end

  def middle_row
    to_braille.map { |letter| letter[1] }
  end

  def bottom_row
    to_braille.map { |letter| letter[2] }
  end

  def top_row_formatted
    top_row.each_slice(40).map {|s| s.join}
  end





end
