# frozen_string_literal: true

# Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.
# Done by Vadim

a = Array.new(10) { rand(-25..25) }

puts 'Start array: ' + a.to_s
puts 'Result:      ' + a.map { |e| e > 0 ? [0, e] : e }.flatten.to_s
