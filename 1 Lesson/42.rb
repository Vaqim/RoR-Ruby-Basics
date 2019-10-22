# frozen_string_literal: true

# Дан целочисленный массив. Найти минимальный нечетный элемент.
# Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]
result = 0
puts 'Start array: ' + a.to_s
a.index(a.map { |_e| a.min.odd? ? result = a.min : a.delete(a.min) })
puts 'Result: ' + result.to_s
