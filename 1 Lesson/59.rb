# frozen_string_literal: true

# Дан целочисленный массив. Найти количество элементов, между первым и последним минимальным.
# Done by Vadim

a = Array.new(10) { rand(50) }
idx1 = a.index(a.min)
idx2 = (a.count - a.reverse.index(a.min))
puts 'Start array: ' + a.to_s
puts 'Result: ' + (a[idx1..idx2].size - 2).to_s
