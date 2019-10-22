# frozen_string_literal: true

# Дан целочисленный массив. Найти индекс первого максимального элемента.
# Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]

puts 'Start array: ' + a.to_s
puts 'Result: ' + a.index(a.max).to_s
