def translate_message
top_array = []
top = top_row.each_slice(40).map {|i| i.join }
top = top.join.split('')
top.each_slice(2).map do |top|
  top_array << "#{top.first}#{top.last}"
end
top_array

mid_array = []
mid = middle_row.each_slice(40).map {|i| i.join }
mid = mid.join.split('')
mid.each_slice(2).map do |mid|
  mid_array << "#{mid.first}#{mid.last}"
end
mid_array

bot_array = []
bot = bottom_row.each_slice(40).map {|i| i.join }
bot = bot.join.split('')
bot.each_slice(2).map do |bot|
  bot_array << "#{bot.first}#{bot.last}"
end
bot_array

message = [top_array, mid_array, bot_array]



def top_row
  top = []
  n = format_message
  n.delete("")
  a = n.each_slice(3)
  first_40 = a.to_a[0]
  formatted_top = first_40.join.split('')
  top_array = []
  formatted_top.each_slice(2).map do |top|
    top_array << "#{top.first}#{top.last}"
  end
  top_array


  # formatted_top = top.join.split('')
  # top_array = []
  # formatted_top.each_slice(2).map do |top|
  #   top_array << "#{top.first}#{top.last}"
  # end
  # top_array
end

def middle_row
  middle = []
  n = format_message
  n.delete("")
  a = n.each_slice(3)
  mid_40 = a.to_a[1]
  # require "pry"; binding.pry
  formatted_mid = mid_40.join.split('')
  mid_array = []
  formatted_mid.each_slice(2).map do |mid|
    mid_array << "#{mid.first}#{mid.last}"
  end
  mid_array
  # middle << format_message[1]
  # formatted_mid = middle.join.split('')
  # mid_array = []
  # formatted_mid.each_slice(2).map do |top|
  #   mid_array << "#{top.first}#{top.last}"
  # end
  # mid_array
end

def bottom_row
  bottom = []
  n = format_message
  n.delete('')
  a = n.each_slice(3)
  bot_40 = a.to_a[2]
  formatted_bot = bot_40.join.split('')
  bot_array = []
  formatted_bot.each_slice(2).map do |bot|
    bot_array << "#{bot.first}#{bot.last}"
  end
  bot_array

  # bottom << format_message[2]
  # formatted_bot = bottom.join.split('')
  # bot_array = []
  # formatted_bot.each_slice(2).map do |top|
  #   bot_array << "#{top.first}#{top.last}"
  # end
  # bot_array
end


def translate_message
  whole_message = [top_row, middle_row, bottom_row] #.transpose
  all_braille = @braille.keys
  array = []

  whole_message.each do |collumn|
    require "pry"; binding.pry
    if all_braille.include?(collumn)
      array << @braille[collumn]
    end
  end
  array
end

def output_ready_message

  translate_message.join
end


_______________________________
# old top/mid/bottom row methods


def top
  top = []
  top << format_message[0]
  formatted_top = top.join.split('')
  top_array = []
  formatted_top.each_slice(2).map do |top|
    top_array << "#{top.first}#{top.last}"
  end
  top_array

end


def middl
  middle = []
  middle << format_message[1]
  formatted_mid = middle.join.split('')
  mid_array = []
  formatted_mid.each_slice(2).map do |top|
    mid_array << "#{top.first}#{top.last}"
  end

  mid_array
end



  def botto
    bottom = []
    bottom << format_message[2]
    formatted_bot = bottom.join.split('')
    bot_array = []
    formatted_bot.each_slice(2).map do |top|
      bot_array << "#{top.first}#{top.last}"
    end
    bot_array
  end
__________________________________________
# removed/trimmed stuff

# writer class and spec

# it 'can write_message to a new file' do
#
#   expect{@night.write_message}.to output("created ./spec/test/test_output.txt 10 characters").to_stdout
# end


# it 'can return whats in the outfile' do
#   expect(@night.read_output).to eq("a b\n")
# end

# def write_message
# message = read_message
# writer = File.open(@output_file_path, "w")
# new = writer.write(message)
# print "created #{@output_file_path} #{message.length} characters".delete("'")
# end

# def read_output
#   message = read_message
#   updated_message = message
#   writer = File.open(@output_file_path, "w")
#   new = writer.write(updated_message)
#   updated_message
# end
