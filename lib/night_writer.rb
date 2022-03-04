

class NightWriter

  def initialize(filename)
    @filename = filename

  end

  def read
    file = File.open(@filename)
    incoming = file.read
    incoming.length

  end

  def welcome
    "Created '#{@filename}' containing #{self.read} characters"

  end


end

new = NightWriter.new('message.txt')
