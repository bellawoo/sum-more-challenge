require 'pry'

# require './generate'

text = File.read("numbers.csv")

#Find the sum of numbers in the first row
text.split(/[\n, ","]/)
first_line = text.to_i
sum_first_line = first_line.each { |i| sum += i}

binding.pry

puts sum_first_line