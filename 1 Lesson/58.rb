# frozen_string_literal: true

# Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.
# Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]
extremum = 0

puts 'Start array: ' + a.to_s
a.reverse.each.with_index { |e, idx| e == a.min || e == a.max ? (extremum = idx; break) : e }
puts 'Result: ' + (a.size - (extremum + 1)).to_s
