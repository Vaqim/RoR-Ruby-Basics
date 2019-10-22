# frozen_string_literal: true

# Дан целочисленный массив. Найти индекс последнего максимального элемента.
# Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]

puts 'Start array: ' + a.to_s
puts 'Result: ' + (a.size - a.reverse.index(a.max) - 1).to_s
puts a.reverse.to_s
