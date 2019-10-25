# frozen_string_literal: true

# Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.
# Done by Vadim

a = Array.new(10) { rand(50) }

puts 'Start array: ' + a.to_s
puts 'Result: ' + (a.select(&:odd?) + a.select(&:even?)).to_s
