# frozen_string_literal: true

# Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.
# Done by Vadim

a = Array.new(10) { rand(50) }

puts 'Start array: ' + a.to_s
puts 'Result:      ' + a.map!.with_index { |e, index| e.odd? && !(index == 0 || index == a.index(a.last)) ? e += a.first : e }.to_s
