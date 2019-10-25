# frozen_string_literal: true

# Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.
# Done by Vadim

ary = Array.new(10) { rand(50) }
a = 2
b = 7; # interval

puts 'Start array: ' + ary.to_s
puts ary[a..b].min.to_s
