# Writing data to the file
# file = File.open('example.txt', 'w')
# file.write("Hello, World!\n")
# file.write("This is a test file.\n")
# file.close

# Appending data to the file
# file = File.open('example.txt', 'a')
# file << "Appending new content.\n"
# file.close

# # Reading the entire file content using read
# file = File.open('example.txt', 'r')
# content = file.read
# puts "File content using read:"
# puts content
# file.close

# # Reading the first line using readline
# file = File.open('example.txt', 'r')
# line = file.readline
# puts "First line using readline:"
# puts line
# file.close

# # Reading the file line by line using each_line
# File.open('example.txt', 'r') do |file|
#   puts "File content using each_line:"
#   file.each_line do |line|
#     puts line
#   end
# end

# # Moving the file pointer and reading again using seek
# file = File.open('example.txt', 'r')
# file.seek(4) 
# content = file.read
# puts "File content after seek(0):"
# puts content
# file.close

# # Reading until the end of the file using eof?
file = File.open('example.txt', 'r')
puts "Reading file until EOF:"
while !file.eof?
  line = file.readline
  puts line
end
file.close

# # Demonstrating buffering (automatic, but can be managed)
# File.open('example.txt', 'w') do |file|
#   file.sync = true  # Disable buffering
#   file.write("Buffered content.\n")
# end

# # Using standard output
# STDOUT.puts "This is standard output"

# # Using standard input
# puts "Please enter some input:"
# input = STDIN.gets
# puts "You entered: #{input}"
