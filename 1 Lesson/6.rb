# frozen_string_literal: true

# Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.
# Done by Vadim

a = Array.new(10) { rand(50) }

puts 'Start array: ' + a.to_s
puts 'Result:      ' + a.map!.with_index { |e, index| e.even? && !(index == 0 || index == a.index(a.last)) ? e += a.last : e }.to_s
