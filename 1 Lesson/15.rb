# frozen_string_literal: true

# Дан целочисленный массив. Проверить, образуют ли элементы арифметическую прогрессию. Если да, то вывести разность прогрессии, если нет - вывести nil.
# Done by Vadim

a = [5, 6, 7, 8, 10, 12]

puts 'Start array: ' + a.to_s
puts 'Result:      '
a.each.with_index { |_e, idx| a[idx] - a[idx + 1] == a[idx + 1] - a[idx + 2] ? (puts (a[idx] - a[idx + 1]).to_s) : (puts 'nill'.to_s) }
