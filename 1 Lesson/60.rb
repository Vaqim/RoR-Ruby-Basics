# frozen_string_literal: true

# Дан целочисленный массив. Найти количество элементов, между первым и последним максимальным.
# Done by Vadim

a = Array.new(10) { rand(50) }
idx1 = a.index(a.max)
idx2 = (a.size - a.reverse.index(a.max))
puts 'Start array: ' + a.to_s
puts idx1.to_s + idx2.to_s
puts 'Result: ' + (a[idx1..idx2].size - 2).to_s
