

class NightWriter

  def initialize(filename)
    @filename = filename

  end

  def read
    file = File.open(@filename)
    incoming = file.read
    incoming.length

  end


end

night = NightWriter.new('message.txt')
night.read
