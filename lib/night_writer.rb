

class NightWriter

  def initialize(filename)
    @filename = filename

  end

  def read
    file = ARGV[0]
    File.read(file).count

  end


end
