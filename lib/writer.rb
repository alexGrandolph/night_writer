


class Writer

  def initialize()
    @input_file_path = ARGV[0]
    @output_file_path = new_output_file
  end

  def new_output_file
    return ARGV[1] if ARGV[1]
  end

  def read_message
    File.open(@input_file_path).read
  end


end
