# frozen_string_literal: true

# Дан целочисленный массив. Найти минимальный положительный элемент.
# Done by Vadim

a = Array.new(10) { rand(-25..25) }
result = 0
puts 'Start array: ' + a.to_s
a.index(a.map { |_e| a.min > 0 ? result = a.min : a.delete(a.min) })
puts 'Result: ' + result.to_s
