# frozen_string_literal: true

# Дан целочисленный массив. Найти индекс максимального элемента.
# Done by Vadim

a = Array.new(10) { rand(50) }

puts 'Start array: ' + a.to_s
puts 'Result: ' + a.index(a.max).to_s
