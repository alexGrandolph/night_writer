require_relative 'writer'
require_relative 'alphabet'


class Translator
  attr_reader :english, :message

  def initialize(message)
    @message = message.split(/(\W)/)
    @english = Alphabet.new.english_to_braille
  end

  def parse_message
    @message.map { |word| word }
  end

  def split_to_letters
    parse_message.map do |word|
      word.split('').map do |character|
        character
      end
    end
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
    top_row.each_slice(40).map { |row| row.join }
  end

  def middle_row_formatted
    middle_row.each_slice(40).map { |row| row.join }
  end

  def bottom_row_formatted
    bottom_row.each_slice(40).map { |row| row.join }
  end

  def formatted_braille_message
    row1 = top_row_formatted
    row2 = middle_row_formatted
    row3 = bottom_row_formatted
    loop_counter = row1.count
    index = 0
    final_message = ""
    loop_counter.times do
      final_message << "#{row1[index]}\n#{row2[index]}\n#{row3[index]}\n\n"
      index = index + 1
    end
    final_message
  end


end
