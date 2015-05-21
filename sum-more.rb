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

# 3. Total number of numbers in file?
# Set up for part 4
all_tokens = lines.map { |l| l.split(",") }.flatten
all_numbers = all_tokens.map { |t| t.to_i }


ns = 0
text.each do |l|
	number_of_numbers += i.split(",").count
end

# 3 redux - Other more advanced solutions
n2 = lines.map { |l| l.split(",") }.flatten.count
n3 = lines.map { |l| l.split(",").count }.reduce :+

# 4. How many are even? Divisible by 7?
evens = []
all_numbers.each do |n|
	if n.even?
		evens.push n
end

evens.count

puts "There are #{evens.count} even numbers."


sevens = []
all_numbers.each do |n|
	if n % 7 == 0
		sevens.push n
	end
end

sevens.count
puts "There are #{sevens.count} numbers that are divisible by 7."