filename = ARGV.first

txt = open(filename)
# opens/reads the file and saves it in a variable text by creating a file object, we can give commands to the file using .
puts "Here's your file #{filename}:"
print txt.read
txt.close #closing file and file object
print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
txt_again.close
