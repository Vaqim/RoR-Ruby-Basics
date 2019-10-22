# frozen_string_literal: true

# Дан целочисленный массив. Найти количество элементов, между первым и последним минимальным.
# Done by Vadim

a = [4, 5, 2, 4, 9, 5, 4, 6, 2, 5, 4, 2, 8]
idx1 = a.index(a.min)
idx2 = (a.size - a.reverse.index(a.min))
puts 'Start array: ' + a.to_s
puts idx1.to_s + idx2.to_s
puts 'Result: ' + (a[idx1..idx2].size - 3).to_s
