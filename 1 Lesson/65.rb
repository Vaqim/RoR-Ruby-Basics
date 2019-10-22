# frozen_string_literal: true

# Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.
# Done by Vadim
a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]

puts 'Start array: ' + a.to_s
puts 'Result: ' + (a.select(&:even?) + a.select(&:odd?)).to_s
