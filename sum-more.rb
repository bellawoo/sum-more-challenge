require 'pry'

# 1. Find the sum of numbers in the first row
text = File.read("numbers.csv").lines

# 1 redux - making our answer reusable for subsequent questions
def sum_one_line l
	numbers_string = l.chomp.split(",")
	running_total = 0
	numbers_string.each do |n|
		running_total += n.to_i
	end
	return running_total
end

s = sum_one_line text.first
puts "Sum of the first line is #{s}"


# first_line = text.first
# numbers_string = first_line.chomp.split(",")
# numbers = numbers_string.map { |n| n.to_i }

# running_total = 0
# numbers.each do |i|
# 	running_total += i
# end

# puts "First line total is: #{running_total}"

# 2. Sum of all lines
running_total = 0
text.each do |line|
	s = sum_one_line line
	running_total += s
	# numbers_string = line.chomp.split(",")
	# numbers = numbers_string.map { |n| n.to_i }

	# line_total = 0
	# numbers.each do |n|
	# 	line_total += n
	# end
	# # adding each line's total to the new running total
	# running_total += line_total
	# puts "Sum of line: #{line_total}"
end

puts "Sum of file: #{running_total}"