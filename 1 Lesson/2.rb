# frozen_string_literal: true

# Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.
# Done by Vadim

a = Array.new(10) { rand(50) }
puts 'Start array: ' + a.to_s
puts 'Result:      ' + (a.select.with_index { |_, index| index.odd? } + a.select.with_index { |_, index| index.even? }).to_s
