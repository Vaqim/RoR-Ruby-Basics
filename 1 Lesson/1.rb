# frozen_string_literal: true

# Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.
# Done by Vadim

array = Array.new(10) { rand(50) }
puts 'Start array: ' + array.to_s
puts 'Result:      ' + (array.select.with_index { |_, index| index.even? } + array.select.with_index { |_, index| index.odd? }).to_s
