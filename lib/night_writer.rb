

class NightWriter

  def initialize(file)

    @file = file

    # @read_message = read_file
    # @braile = create_new_file
    # input_file = ARGV[0], output = ARGV[1]
    # @input_file = input_file
    # @output = output
  end

  def read
    handle = File.open(@file, 'r')
    incoming = handle.read
    incoming
  end


  # def welcome
  #   handle = File.open(@input_file)
  #   incoming = handle.read
  #   handle.close
  #   out = incoming.upcase
  #   write = File.open(@output, 'w')
  #   n = write.write('braille.txt')
  #   write.close
  #   puts "Created #{@output} containing #{incoming.length} characters"
  # end


end

# new = NightWriter.new('./spec/test/message.txt')
# new.welcome
