#Simple file to hex converter script
file_name = ARGV[0]

file_1_binary = File.open(file_name, 'rb')
hex_string = file_1_binary.each_byte.map { |b| sprintf('%02x', b) }.join.upcase

puts hex_string
