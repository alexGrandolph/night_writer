require_relative 'alphabet'
require_relative 'braille_translator'
require_relative 'reader'

new = Reader.new
new.output_translated_message
