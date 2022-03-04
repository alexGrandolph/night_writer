

class NightWriter

  def initialize(input_file = ARGV[0], output = ARGV[1])
    @input_file = input_file
    @output = output
  end

  def welcome
    handle = File.open(@input_file)
    incoming = handle.read
    handle.close
    out = incoming.upcase
    write = File.open(@output, 'w')
    n = write.write('braille.txt')
    write.close
    puts "Created #{@output} containing #{incoming.length} characters"
  end


end

new = NightWriter.new('./spec/test/message.txt')
new.welcome
