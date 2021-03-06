# frozen_string_literal: true

# Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.
# Done by Vadim

a = Array.new(10) { rand(-25..25) }

puts 'Start array: ' + a.to_s
puts 'Result:      ' + a.map { |e| e < 0 ? a.min : e }.to_s
