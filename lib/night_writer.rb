

class NightWriter

  def initialize(input_file = ARGV[0], output_file = ARGV[1])
    @input_file = input_file
    @output_file = output_file
  end


  def welcome
    handle = File.open(@input_file, 'r')
    incoming = handle.read
    handle.close
    out = incoming
    write = File.open("output_file.txt", 'w')
    count = write.write(out)
    write.close
    # require "pry"; binding.pry
    print "Created #{ARGV[1]} containing #{count} characters"
  end


end

new = NightWriter.new('./spec/test/message.txt')
new.welcome


# def read
#   handle = File.open(@file, 'r')
#   incoming = handle.read
#   incoming
# end
#
# def write_new_file
#   copy_file = read.upcase
#   writer = File.open(ARGV[1], 'w')
#   new_file_count = writer.write(copy_file)
#   @new_file_count = new_file_count
#   copy_file
# end
